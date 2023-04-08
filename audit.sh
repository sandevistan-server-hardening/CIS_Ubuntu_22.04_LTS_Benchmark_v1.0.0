#!/bin/bash

# Hardness profile selection
./profile/hardnessProfileSelector.sh $1 $2

# 1 Initial Setup Audit
./1_Initial_Setup/1_5_Additional_Process_Hardening/1_5_2_Ensure_prelink_is_not_installed.sh