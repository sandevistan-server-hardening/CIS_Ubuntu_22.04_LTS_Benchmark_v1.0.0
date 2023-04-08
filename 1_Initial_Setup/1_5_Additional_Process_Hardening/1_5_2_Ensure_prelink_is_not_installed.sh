#!/bin/bash

output=$(dpkg-query -W -f='${binary:Package}\t${Status}\t${db:Status-Status}\n' prelink)

if [[ "$output" == *"prelink unknown ok not-installed not-installed"* || "$output" == *"dpkg-query: no packages found matching prelink"* ]]; then
  echo "pass"
else
  echo "FAIL"
fi