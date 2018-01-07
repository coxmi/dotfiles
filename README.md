# Dotfiles 


## Install

On a fresh installation of macOS:

    sudo softwareupdate -i -a
    xcode-select --install

Install in `~/.dotfiles` with git:

    git clone https://github.com/michaeland/dotfiles.git ~/.dotfiles && source ~/.dotfiles/install

Or alternatively with curl:

    curl -fsSL https://raw.githubusercontent.com/michaeland/dotfiles/master/install-remote | bash


## Conventions

- **`bin/*`**: Anything in `bin` will get added to your `$PATH` and be made available everywhere.
- **`{folder}/{env,alias,functions,path,profile,prompt}`**: Any executable file named `env`, `alias`, 
  `functions`, `path`, `profile`, or `env` is loaded into the shell environment.
- **`{folder}/.*`**: Any `.dotfiles` get copied into `~`. These get copied when you run `dotfiles files`.
- **`{folder}/install`**: Any executable named `install` will be run with `dotfiles install`.
- **`{folder}/preinstall`**: Any executable named `preinstall` will be run with `dotfiles install` before any `install` scripts.
- **`{folder}/postinstall`**: Any executable named `postinstall` will be run with `dotfiles install` after any `install` scripts.


## dotfiles help command

    Usage: dotfiles <command>

    Commands:
    -  files     Copies dotfiles (${folder}/.*) to ~ if they don’t already exist
    -  install   Runs all installers (${folder}/install)
    -  macOS     Apply macOS system defaults (requires reboot)
    -  dock      Empty dock on macOS
    -  help      This help message
