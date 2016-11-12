#!/bin/bash

###
# Copyright (c) 2016 Florian Steitz
#
# Initializes a Git repository with a couple of basic empty files.
###

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
