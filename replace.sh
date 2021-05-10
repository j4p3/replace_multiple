#!/bin/bash

replace () {
  echo "searching directory $1,"
  echo "replacing instances of:"
  echo "-----------------------"
  echo "$2"
  echo "-----------------------"
  echo "with:"
  echo "-----------------------"
  echo "$3"
  echo "-----------------------"
  echo
  grep -rl $2 $1 |
  xargs sed -i "s/$2/$3/g"
}

replace $1 $2 $3
