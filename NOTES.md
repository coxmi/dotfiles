

# remote install

Add a curl remote-install | bash


# structure

	# dotfiles structure

		1. bin/* -> added to PATH
			dotfiles/symlink -> symlinks all ${folder}/.* to ~
			dotfiles/env -> adds all ${folder}/{alias,exports,functions,path,env} to env
			# dotfiles/install -> installs all [-x ${folder}/install ]

		2. Install: install / defaults / config setup
			${folder}/install

		3. Environment (loaded in .bash_profile): 
			${folder}/alias
			${folder}/exports
			${folder}/functions
			${folder}/path
			${folder}/env

		4. App-specific dotfiles (.gitconfig / .vimrc)
			${folder}/.*

	# setup 

		~/.bash_profile
			source ~/.dotfiles/env
				- sources all environment stuff (${folder}/{alias,exports,functions,path,env})
		~/.bashrc
			source ~/.bash_profile

	# new mac / ssh

		install-remote.sh | bash
			git clones repo into ~/.dotfiles
			runs ~/.dotfiles/install (setup .bash_profile env)

		dotfiles install
			-> installs everything

		dotfiles configure
			macOS computer name
			git config


## git

setup global gitignore:
git config --global core.excludesfile ~/.gitignore_global
git config --global user.email "you@example.com"
git config --global user.name "Your Name"


## Apache + MySQL

Homebrew?
https://gist.github.com/nrollr/3f57fc15ded7dddddcc4e82fe137b58e


## dockutil

brew install dockutil
dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/Mail.app"
dockutil --no-restart --add "/Applications/Calendar.app"


Reference: https://github.com/caarlos0/dotfiles/blob/master/docs/PHILOSOPHY.md
Reference: https://github.com/holman/dotfiles/tree/master/bin
Holman has good ways to deal with individual installs: https://github.com/holman/dotfiles/blob/master/homebrew/install.sh


# Links

https://carlosbecker.com/posts/dotfiles-are-meant-to-be-forked/
https://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/
https://github.com/webpro/dotfiles
https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789
https://github.com/caarlos0/dotfiles/blob/188c5f7964da8fb309484d2af9d3f713cae6ed8f/macos/set-defaults.sh

