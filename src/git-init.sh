#!/bin/bash

###
# The MIT License
#
# Copyright (c) 2016 Florian Steitz
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
# documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
# rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
# persons to whom the Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
# Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS
# OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
# OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#
# Initializes a Git repository with a couple of basic empty files.
###

# Arguments
REPOSITORY=$1

if [ -z "$REPOSITORY" ]
  then
    echo "A valid Git repository must be specified"
    exit 1
fi

# Init repository
git init
git remote add origin $REPOSITORY

# Create basic (empty) files
touch README.md
touch .gitignore

# Commit README.md
git add README.md
git commit -m 'Added empty README.md'

# Commit .gitignore
git add .gitignore
git commit -m 'Added empty .gitignore'

# Push files
git push -u origin master
