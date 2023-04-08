#!/bin/bash

####
# Profile Applicability:
#  Level 1 - Server
#  Level 1 - Workstation
#
# Description:
# prelink is a program that modifies ELF shared libraries and ELF dynamically linked
# binaries in such a way that the time needed for the dynamic linker to perform relocations
# at startup significantly decreases.
#
# Rationale:
# The prelinking feature can interfere with the operation of AIDE, because it changes
# binaries. Prelinking can also increase the vulnerability of the system if a malicious user
# is able to compromise a common library such as libc.
####

echo ""
echo "----- 1.5.2 Ensure prelink is not installed test. -----"
echo ""

# Get the directory of the currently executing script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd | cut -d'/' -f3- )"

# Out of the box test
./$SCRIPT_DIR/1_5_2_Ensure_prelink_is_not_installed.sh > output.txt
cat output.txt
if [[ $(grep "prelink unknown ok not-installed not-installed" output.txt) || $(grep "dpkg-query: no packages found matching prelink" output.txt) ]]; then
  echo "-->Test passed: prelink not installed out of the box"
  echo ""
else
  echo "-->Test failed: prelink not installed out of the box"
  echo ""
fi


# Detecting if prelink is installed test
apt install prelink -y
./$SCRIPT_DIR/1_5_2_Ensure_prelink_is_not_installed.sh > output.txt
cat output.txt
if grep "prelink install ok installed    installed" output.txt; then
  echo "-->Test passed: detecting if prelink is installed"
  echo ""
else
  echo "-->Test failed: detecting if prelink is installed"
  echo ""
fi

# after prelink purge test
apt purge prelink -y
./$SCRIPT_DIR/1_5_2_Ensure_prelink_is_not_installed.sh > output.txt
cat output.txt
if [[ $(grep "prelink unknown ok not-installed not-installed" output.txt) || $(grep "dpkg-query: no packages found matching prelink" output.txt) ]]; then
  echo "-->Test passed: prelink not installed out of the box"
  echo ""
else
  echo "-->Test failed: prelink not installed out of the box"
  echo ""
fi

rm output.txt