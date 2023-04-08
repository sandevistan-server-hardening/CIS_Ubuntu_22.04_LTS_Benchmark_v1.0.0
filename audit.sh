#!/bin/bash

# Hardness profile selection
# $1 and $2 are pass through arguments for command line selection of hardness profile
./profile/hardnessProfileSelector.sh $1 $2

# 1 Initial Setup Audit
./1_Initial_Setup/1_5_Additional_Process_Hardening/1_5_2_Ensure_prelink_is_not_installed.sh