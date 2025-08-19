#!/usr/bin/env bash

# #################################################################################
# extract-refstyle-badges.sh
#
# Description:
#   Creates a table of reference-style markdown badges from the table rows in README.md
#
# #################################################################################

# get a reference to the current directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
READMEFILE="${DIR}/../../../README.md"

# extract the table rows from README.md, sort them, and pass them to 
#  the awk script to generate the reference-style link for each row.
# Add a newline at the end and write to md-badges.md
readmerows=$(
  cat "${READMEFILE}" | \
  grep -E '^\| \[' | \
  sort 
)

# add a newline before processing with awk
printf "%s\n" "$readmerows" \
  | awk -F '|' -f "${DIR}/extract-refstyle-badges.awk" \
> md-badges.md

# now insert the generated md-badges.md content into README.md

lead='^<\!-- ### BEGIN GENERATED CONTENT -->'
tail='^<\!-- ### END GENERATED CONTENT -->'

sed -e "/$lead/,/$tail/{
  /$lead/{
    p;
    r md-badges.md
  };
  /$tail/p;
  d
}" "${READMEFILE}" > "${READMEFILE}.tmp"
mv "${READMEFILE}.tmp" "${READMEFILE}"

# echo "${READMEFILE}"