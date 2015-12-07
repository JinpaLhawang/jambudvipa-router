#!/bin/bash

function subtitle {
  echo ;
  echo "$(tput setaf 3;tput bold)$1$(tput sgr0)"
}
function keyValue {
  echo "$(tput setaf 3;tput bold)$1:$(tput sgr0) $2"
}
function warning {
  echo ;
  echo "$(tput setaf 2)$1$(tput sgr0)"
}
function error {
  echo ;
  echo "$(tput setaf 1;tput bold)Error: $1$(tput sgr0)"
}
function quit {
  echo ;
  echo "$(tput setaf 6;tput bold)$1$(tput sgr0)"
  echo ;
  exit
}

git clone https://github.com/JinpaLhawang/jambudvipa-router.git
cd jambudvipa-router/

cp ../release-scripting/.gitignore .
cp ../release-scripting/.editorconfig .
cp ../release-scripting/.eslint* .
cp ../release-scripting/.jshint* .

npm init -y

git add --all
git commit -m "Initial commit."
git push origin

git tag -a "0.0.1" -m "Initial commit."

git checkout -b develop
git push origin
