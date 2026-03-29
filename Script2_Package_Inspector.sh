#!/bin/bash

STUDENT_NAME="Shoubhik Bhattacharya"
PACKAGE="python3"

echo "======================================"
echo " Package Inspector - $STUDENT_NAME"
echo "======================================"

if command -v $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed"
    VERSION=$($PACKAGE --version)
    echo "Version: $VERSION"
else
    echo "$PACKAGE is NOT installed"
fi

case $PACKAGE in
    python3) echo "Python is a powerful and easy programming language" ;;
    git) echo "Git is a version control system" ;;
    *) echo "Unknown package" ;;
esac
