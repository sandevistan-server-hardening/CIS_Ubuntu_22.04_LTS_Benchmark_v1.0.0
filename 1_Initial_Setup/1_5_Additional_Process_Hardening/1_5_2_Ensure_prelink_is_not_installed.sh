#!/bin/bash

echo ""
echo "----- 1.5.2 Ensure prelink is not installed audit. -----"
echo ""

dpkg-query -W -f='${binary:Package}\t${Status}\t${db:Status-Status}\n' prelink > reports/1_5_2.txt
cat reports/1_5_2.txt
if [[ grep "prelink unknown ok not-installed not-installed" reports/1_5_2.txt || grep "dpkg-query: no packages found matching prelink" reports/1_5_2.txt ]]; then
  echo "pass"
else
  echo "FAIL"
fi


