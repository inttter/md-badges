#!/usr/bin/env bash

# #################################################################################
# extract-refstyle-badges.sh
#
# Description:
#   Creates a table of reference-style markdown badges from the table rows in README.md
#
# #################################################################################

# ===== Error handling =======
# set -e: exit on error
set -e

# invoke the catch() function whenever an error occurs
trap 'catch $? $LINENO' EXIT

# catch() function just prints an error message (before exit)
catch() {
  if [ "$1" != "0" ]; then
    # error handling goes here
    echo "    (Exiting due to return code $1 on line $2)" >&2
  else
    echo "Script completed successfully"
  fi
}


# get a reference to the current directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
# relative path to README.md
READMEFILE="${DIR}/../../../README.md"
# temporary file
TEMPFILE="${DIR}/md-badges.md"
# relative path to output file
OUTFILE="${DIR}/../../../docs/REFERENCE_STYLE.md"

# extract the table rows from README.md, sort them, and pass them to 
#  the awk script to generate the reference-style link for each row.
# Add a newline at the end and write to md-badges.md
readmerows=$(
  cat "${READMEFILE}" | \
  grep -E '^\| \[' | \
  sort 
)

# add a newline before processing with awk into TEMPFILE
printf "%s\n\n" "$readmerows" \
  | gawk --posix -F '|' -f "${DIR}/extract-refstyle-badges.awk" \
> "${TEMPFILE}"

# now insert the generated md-badges.md content into README.md

lead='^<\!-- ### BEGIN GENERATED CONTENT -->'
tail='^<\!-- ### END GENERATED CONTENT -->'

sed -e "/$lead/,/$tail/{
  /$lead/{
    p;
    r $TEMPFILE
  };
  /$tail/p;
  d
}" "${OUTFILE}" > "${OUTFILE}.tmp"
mv "${OUTFILE}.tmp" "${OUTFILE}"
