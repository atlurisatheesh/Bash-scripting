#!/bin/bash
echo "$*"
echo "$$"
echo "$#"
echo "$?"
echo "$@"

# we never use single quotes for expressions
echo '$*'
echo '$$'
echo '$#'
echo '$?'
echo '$@'