BEGIN{
  # initialize vars
  TRUE=1;
  FALSE=0;
  count=0;
  shouldSkip=FALSE;
  # 'delete' initializes a var as an array
  delete labelsArray[0];
  delete defsArray[0];
  delete refsArray[0];
  # printf "" > "errors.txt";
}
/^| \[/{
  # initialize our variables
  shouldSkip=FALSE;
  label=$2;
  url=$2;
  # extract the label by removing everything before and after it
  gsub(/^[[:space:]]*\[!\[/, "", label);
  gsub(/\].*$/, "", label);

  # extract the URL by removing everything before and after it
  gsub(/^[^\(]*\(/,"",url);
  gsub(/\)\].*$/,"",url);

  if (label == "") {
    # print "label is empty: '"label"'; url='"url"'\n" >> "errors.txt" ;

    shouldSkip=TRUE;
  }

  # ensure our label is unique by appending _alt to it
  if (shouldSkip == FALSE) {
    while(label in labelsRecordArray && shouldSkip == FALSE) {
      # print "Found duplicate label: '"label"'; labelsRecordArray[label]=='"labelsRecordArray[label]"'; url='"url"'\n" >> "errors.txt" ;
      if (labelsRecordArray[label] == url) {
        shouldSkip=TRUE;
      } else {
        label=label"_alt" ;
      }
    }
  }

  if (shouldSkip == FALSE) {
    # append this label to the set of unique labels
    labelsRecordArray[label] = url;

    # generate the markdown code for this label and url
    refcode = "!["label"]["label"]";
    defcode = "["label"]: "url" \""label"\"";

    # store our markdown code against the label
    labelsArray[count] = label;
    defsArray[count] = defcode;
    refsArray[count] = refcode;
    count++;
  }
}
END{
  # output the markdown table
  print "| Preview | Reference Markdown Code | Definition Markdown Code |"
  print "|---------|------------------------|------------------------|"

  for(i=0;  i<count;  i++) {
    print "| "refsArray[i]" | `"refsArray[i]"` | `"defsArray[i]"`|" ;
  }
  
  # blank line to end the (visible) table and start the (non-visible) reference definitions
  print;

  # output the references
  for(j=0;  j<count;  j++) {
    print defsArray[j];
  }
  print;
}