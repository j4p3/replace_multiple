#!/bin/bash

replace () {
  echo "replacing instances of:"
  echo "-----------------------"
  echo "$1"
  echo "-----------------------"
  echo "with:"
  echo "-----------------------"
  echo "$2"
  echo "-----------------------"
  echo
  grep -rl $1 | xargs sed -i "s/$1/$2/g"
}

replace $1 $2
