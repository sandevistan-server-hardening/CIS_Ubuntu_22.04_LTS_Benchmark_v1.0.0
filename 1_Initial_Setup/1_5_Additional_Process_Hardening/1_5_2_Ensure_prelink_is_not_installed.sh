#!/bin/bash

echo ""
echo "----- 1.5.2 Ensure prelink is not installed audit. -----"
echo ""

prelink_error=$(dpkg-query -W -f='${binary:Package}\t${Status}\t${db:Status-Status}\n' prelink 2>&1)
echo "$prelink_error" > reports/1_5_2.error.txt
dpkg-query -W -f='${binary:Package}\t${Status}\t${db:Status-Status}\n' prelink > reports/1_5_2.txt
cat reports/1_5_2.txt
if [[ $(grep "not-installed" reports/1_5_2.txt) || $(grep "no packages found matching prelink" reports/1_5_2.error.txt) ]]; then
  echo "pass"
  echo ""
else
  echo "FAIL"
  echo ""
fi


