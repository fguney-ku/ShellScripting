#!/bin/bash

: '
input: the name of the path
mcd creates the directories in the path recursively
and change into the directory
usage: mcd dir_k/.../dir_1
'

mcd () {
  # create the directory (or directories) in the first argument ($1) recursively (-p)
  mkdir -p "$1"

  # then Change into this Directory (cd)
  cd "$1"
}