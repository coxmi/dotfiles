#!/bin/bash

# to be included in ~/.bash_profile via
# `source /path/to/dotfiles/bash_profile`

# read: https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789

# get current directory
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )


# include aliases, functions and paths
source $DIR/aliases
source $DIR/functions
source $DIR/paths
source $DIR/variables


# Change terminal icon
PS1="\W: ☞  "