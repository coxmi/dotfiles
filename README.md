
# Install

### On a fresh installation of macOS:

    sudo softwareupdate -i -a
    xcode-select --install

    mkdir ~/.dotfiles && cd ~/.dotfiles
    git clone https://github.com/michaeland/dotfiles.git .
    ./install
    dotfiles symlink


# Conventions

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **folder/{alias,exports,functions,path,env}**: Any file named `alias`, `exports`, 
  `functions`, `path`, or `env` is loaded into the shell environment.
- **folder/install**: Any files named `install` will be run with `dotfiles install`.
- **folder/\.\***: Any `*.dotfiles` get symlinked into  your `$HOME`. 
  This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `dotfiles symlink`.
