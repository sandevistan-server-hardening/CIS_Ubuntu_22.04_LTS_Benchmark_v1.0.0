#!/bin/bash

# Out of the box test
./1_5_2_Ensure_prelink_is_not_installed.sh > output.txt
if [[ ! $(grep "prelink unknown ok not-installed not-installed" output.txt) || ! $(grep "dpkg-query: no packages found matching prelink" output.txt) ]]; then
  echo "Test passed: prelink not installed out of the box"
else
  echo "Test failed: prelink not installed out of the box"
fi


# Detecting if prelink is installed test
apt install prelink -y
./1_5_2_Ensure_prelink_is_not_installed.sh > output.txt
if ! grep "prelink install ok installed    installed" output.txt; then
  echo "Test passed: detecting if prelink is installed"
else
  echo "Test failed: detecting if prelink is installed"
fi

# after prelink purge test
apt purge prelink -y
./1_5_2_Ensure_prelink_is_not_installed.sh > output.txt
if [[ ! $(grep "prelink unknown ok not-installed not-installed" output.txt) || ! $(grep "dpkg-query: no packages found matching prelink" output.txt) ]]; then
  echo "Test passed: prelink not installed out of the box"
else
  echo "Test failed: prelink not installed out of the box"
fi