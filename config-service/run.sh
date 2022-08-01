#!/bin/bash

# Environment variables
export GIT_USER=MauroDemo
export GIT_PASSWORD=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

# Check if gradle is installed
if ! gradle -version > /dev/null 2>&1; then
  echo "This script uses gradle and it isn't installed - please install it and try again!"
  exit 1
fi

# Clean gradle previous configuration
rm -rf .gradle gradle gradlew* build

# Build using gradle
gradle build

# Run using gradle
gradle bootRun