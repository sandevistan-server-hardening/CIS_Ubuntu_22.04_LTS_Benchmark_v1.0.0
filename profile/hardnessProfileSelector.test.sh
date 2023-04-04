#!/bin/bash

# Test selecting level 1 and workstation
echo -e "1\n1" | source hardnessProfileSelector.sh > output.txt
if ! grep "Level: Level 1" output.txt; then
  echo "Test failed: selecting level 1 and workstation"
fi
if grep "Level: Level 1" output.txt; then
  echo "Test passed: selecting level 1 and workstation"
fi
if ! grep "Type: Workstation" output.txt; then
  echo "Test failed: selecting level 1 and workstation"
fi
if grep "Type: Workstation" output.txt; then
  echo "Test passed: selecting level 1 and workstation"
fi

# Test selecting level 1 and server
echo -e "1\n2" | source hardnessProfileSelector.sh > output.txt
if ! grep "Level: Level 1" output.txt; then
  echo "Test failed: selecting level 1 and server"
fi
if grep "Level: Level 1" output.txt; then
  echo "Test passed: selecting level 1 and server"
fi
if ! grep "Type: Server" output.txt; then
  echo "Test failed: selecting level 1 and server"
fi
if grep "Type: Server" output.txt; then
  echo "Test passed: selecting level 1 and server"
fi

# Test selecting level 2 and workstation
echo -e "2\n1" | source hardnessProfileSelector.sh > output.txt
if ! grep "Level: Level 2" output.txt; then
  echo "Test failed: selecting level 2 and workstation"
fi
if ! grep "Type: Workstation" output.txt; then
  echo "Test failed: selecting level 2 and workstation"
fi
if grep "Level: Level 2" output.txt; then
  echo "Test passed: selecting level 2 and workstation"
fi
if grep "Type: Workstation" output.txt; then
  echo "Test passed: selecting level 2 and workstation"
fi

# Test selecting level 2 and server
echo -e "2\n2" | source hardnessProfileSelector.sh > output.txt
if ! grep "Level: Level 2" output.txt; then
  echo "Test failed: selecting level 2 and server"
fi
if ! grep "Type: Server" output.txt; then
  echo "Test failed: selecting level 2 and server"
fi
if grep "Level: Level 2" output.txt; then
  echo "Test passed: selecting level 2 and server"
fi
if grep "Type: Server" output.txt; then
  echo "Test passed: selecting level 2 and server"
fi



# Test selecting level 1 and workstation via arguments
source hardnessProfileSelector.sh 1 workstation > output.txt
if ! grep "Level: Level 1" output.txt; then
  echo "Test failed: selecting level 1 and workstation"
fi
if grep "Level: Level 1" output.txt; then
  echo "Test passed: selecting level 1 and workstation"
fi
if ! grep "Type: Workstation" output.txt; then
  echo "Test failed: selecting level 1 and workstation"
fi
if grep "Type: Workstation" output.txt; then
  echo "Test passed: selecting level 1 and workstation"
fi

# Test selecting level 1 and server via arguments
echo -e "1\n2" | source hardnessProfileSelector.sh 1 server > output.txt
if ! grep "Level: Level 1" output.txt; then
  echo "Test failed: selecting level 1 and server"
fi
if grep "Level: Level 1" output.txt; then
  echo "Test passed: selecting level 1 and server"
fi
if ! grep "Type: Server" output.txt; then
  echo "Test failed: selecting level 1 and server"
fi
if grep "Type: Server" output.txt; then
  echo "Test passed: selecting level 1 and server"
fi

# Test selecting level 2 and workstation via arguments
echo -e "2\n1" | source hardnessProfileSelector.sh 2 workstation > output.txt
if ! grep "Level: Level 2" output.txt; then
  echo "Test failed: selecting level 2 and workstation"
fi
if ! grep "Type: Workstation" output.txt; then
  echo "Test failed: selecting level 2 and workstation"
fi
if grep "Level: Level 2" output.txt; then
  echo "Test passed: selecting level 2 and workstation"
fi
if grep "Type: Workstation" output.txt; then
  echo "Test passed: selecting level 2 and workstation"
fi

# Test selecting level 2 and server via arguments
echo -e "2\n2" | source hardnessProfileSelector.sh 2 server > output.txt
if ! grep "Level: Level 2" output.txt; then
  echo "Test failed: selecting level 2 and server"
fi
if ! grep "Type: Server" output.txt; then
  echo "Test failed: selecting level 2 and server"
fi
if grep "Level: Level 2" output.txt; then
  echo "Test passed: selecting level 2 and server"
fi
if grep "Type: Server" output.txt; then
  echo "Test passed: selecting level 2 and server"
fi

rm output.txt
