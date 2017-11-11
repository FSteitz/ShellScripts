#!/bin/bash
####
# Copyright 2016 Florian Steitz
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
###
###
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
