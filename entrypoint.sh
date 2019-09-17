#!/bin/bash

# Check if the student's repo is set
if [ -z $STUDENT_REPO ]; then
    echo "STUDENT_REPO variable is not set"
    exit 1
fi

echo "Source repository: ${SRC_REPO}"
echo "Student's repository: ${STUDENT_REPO}"
echo "Student repository's branch: ${BRANCH}"

# Git config needed to merge locally
git config --global user.email "tests@email.com"
git config --global user.name "Bot"

# Clone the source repo
git clone ${SRC_REPO} .

# Adds student remote and merges its branch into master
git remote add student ${STUDENT_REPO}
git fetch student
git merge student/${BRANCH} -m "Merges student branch into master"

# Run the tests
prove -I/usr/lib -c
