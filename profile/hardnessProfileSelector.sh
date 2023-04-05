#!/bin/bash

args_not_present=false
if [ -z "$1" ] || [ -z "$2" ]; then
  args_not_present=true
fi

if [ "$args_not_present" = true ]; then
  # Prompt the user to select a level
  echo "Please select a desired Hardness level to audit against:"
  echo "1) Level 1"
  echo "2) Level 2"
  read level
else
  level=$1
fi
# Check if the user entered a valid level
if [[ $level != "1" && $level != "2" ]]; then
  echo "Invalid level selected. Exiting."
  exit 1
fi

if [ "$args_not_present" = true ]; then
  # Prompt the user to select a type
  echo "Please select a use type:"
  echo "1) Workstation"
  echo "2) Server"
  read usetype
else
  usetype=$2
fi
# Check if the user entered a valid type
if [[ $usetype != "1" && $usetype != "2" && $usetype != "workstation" && $usetype != "server" ]]; then
  echo "Invalid type selected. Exiting."
  exit 1
fi

# Output a summary of the user's choices
if [[ $level == "1" ]]; then
  level_name="Level 1"
else
  level_name="Level 2"
fi

if [[ $usetype == "1" || $usetype == "workstation" ]]; then
  type_name="Workstation"
else
  type_name="Server"
fi

echo "Summary of choices:"
echo "Level: $level_name"
echo "Type: $type_name"