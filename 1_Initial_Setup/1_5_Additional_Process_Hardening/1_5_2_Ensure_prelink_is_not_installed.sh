#!/bin/bash

echo ""
echo "----- 1.5.2 Ensure prelink is not installed audit. -----"
echo ""

output=$(dpkg-query -W -f='${binary:Package}\t${Status}\t${db:Status-Status}\n' prelink)
echo $output
if [[ "$output" == *"prelink unknown ok not-installed not-installed"* || "$output" == *"dpkg-query: no packages found matching prelink"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi