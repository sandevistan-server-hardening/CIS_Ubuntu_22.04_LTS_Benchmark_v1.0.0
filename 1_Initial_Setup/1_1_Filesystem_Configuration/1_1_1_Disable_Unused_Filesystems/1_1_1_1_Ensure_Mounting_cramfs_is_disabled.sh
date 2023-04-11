#!/usr/bin/env bash

####
# Profile Applicability:
# Level 1 - Server
# Level 1 - Workstation
#
# Description:
# The cramfs filesystem type is a compressed read-only Linux filesystem embedded in
# small footprint systems. A cramfs image can be used without having to first decompress
# the image.
#
# Rationale:
# Removing support for unneeded filesystem types reduces the local attack surface of the
# system. If this filesystem type is not needed, disable it.
#
# Additional Notes:
# This audit must be done on the actual machine, virtualization or tools like Docker will
# fail. This is because modprobe and lsmod may not be loaded. You can't load kernel 
# modules in a Docker container. You need to load them on the host.
####



{
  l_output="" l_output2=""
  l_mname="cramfs" # set module name
  # Check how module will be loaded
  l_loadable="$(modprobe -n -v "$l_mname")"

  if grep -Pq -- '^\h*install \/bin\/(true|false)' <<< "$l_loadable"; then
    l_output="$l_output\n - module: \"$l_mname\" is not loadable: \"$l_loadable\""
  else
    l_output2="$l_output2\n - module: \"$l_mname\" is loadable: \"$l_loadable\""
  fi

  # Check is the module currently loaded
  if ! lsmod | grep "$l_mname" > /dev/null 2>&1; then
    l_output="$l_output\n - module: \"$l_mname\" is not loaded"
  else
    l_output2="$l_output2\n - module: \"$l_mname\" is loaded"
  fi

  # Check if the module is deny listed
  if grep -Pq -- "^\h*blacklist\h+$l_mname\b" /etc/modprobe.d/*; then
    l_output="$l_output\n - module: \"$l_mname\" is deny listed in: \"$(grep -Pl -- "^\h*blacklist\h+$l_mname\b" /etc/modprobe.d/*)\""
  else
    l_output2="$l_output2\n - module: \"$l_mname\" is not deny listed"
  fi

  # Report results. If no failures output in l_output2, we pass
  if [ -z "$l_output2" ]; then
    echo -e "\n- Audit Result:\n ** PASS **\n$l_output\n"
  else
    echo -e "\n- Audit Result:\n ** FAIL **\n - Reason(s) for audit failure:\n$l_output2\n" [ -n "$l_output" ] && echo -e "\n- Correctly set:\n$l_output\n"
  fi
}