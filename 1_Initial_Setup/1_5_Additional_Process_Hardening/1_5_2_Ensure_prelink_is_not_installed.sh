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
echo "----- 1.5.2 Ensure prelink is not installed audit. -----"
echo ""

prelink_error=$(dpkg-query -W -f='${binary:Package}\t${Status}\t${db:Status-Status}\n' prelink 2>&1)
echo "$prelink_error" > reports/1_5_2.error.txt
dpkg-query -W -f='${binary:Package}\t${Status}\t${db:Status-Status}\n' prelink > reports/1_5_2.txt
cat reports/1_5_2.txt
cat reports/1_5_2.error.txt
if [[ $(grep "not-installed" reports/1_5_2.txt) || $(grep "no packages found matching prelink" reports/1_5_2.error.txt) ]]; then
  echo "pass"
  echo ""
else
  echo "FAIL"
  echo ""
fi


