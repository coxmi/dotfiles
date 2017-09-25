#!/bin/bash

# to be included in ~/.bash_profile via
# `source /path/to/dotfiles/bash_profile`


# get current directory
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )


# include aliases, functions and paths
source $DIR/aliases
source $DIR/functions
source $DIR/paths
source $DIR/variables


# Change terminal icon
PS1="\W: ☞  "


# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;
