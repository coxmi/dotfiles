#!/bin/bash

# to be included in ~/.bash_profile via
# `source /path/to/dotfiles/bash_profile`

# get current directory
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )


# include aliases, functions and paths
source $DIR/aliases
source $DIR/functions
source $DIR/paths


# Change terminal icon
PS1="\W: ☞  "