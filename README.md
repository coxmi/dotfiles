
# Install

## On a fresh installation of macOS:

    sudo softwareupdate -i -a
    xcode-select --install


# To-do

## git

setup global gitignore:
git config --global core.excludesfile ~/.gitignore_global
git config --global user.email "you@example.com"
git config --global user.name "Your Name"

## Apache + MySQL

Homebrew?
https://gist.github.com/nrollr/3f57fc15ded7dddddcc4e82fe137b58e



## macOS defaults

# Set a custom wallpaper image. `DefaultDesktop.jpg` is already a symlink, and
# all wallpapers are in `/Library/Desktop Pictures/`. The default is `Wave.jpg`.
#rm -rf ~/Library/Application Support/Dock/desktoppicture.db
#sudo rm -rf /System/Library/CoreServices/DefaultDesktop.jpg
#sudo ln -s /path/to/your/image /System/Library/CoreServices/DefaultDesktop.jpg

## brew install dockutil

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/Mail.app"
dockutil --no-restart --add "/Applications/Calendar.app"

## Re-arrange .dotfiles structure

Move into:
	bin/
		dotfiles (`dotfiles macOS`, `dotfiles btt`, `dotfiles apps/homebrew`)
		other handy scripts that don't rely on homebrew stuff, e.g. https://github.com/holman/dotfiles/tree/master/bin
	macos/
	git/
	apps|homebrew/
	btt/
	system/ (e.g. .prompt, .path, etc?, .nvm, grep, and other programs with dotfiles)
	install.sh

Reference: https://github.com/caarlos0/dotfiles/blob/master/docs/PHILOSOPHY.md
Reference: https://github.com/holman/dotfiles/tree/master/bin
Holman has good ways to deal with individual installs: https://github.com/holman/dotfiles/blob/master/homebrew/install.sh

Two cases for structure:
	1. install / defaults
	2. PATH / aliases / functions

## Sort out formatting of scripts

/bold/purple/==> /black/This script will install `xx`
Take formatting of: https://github.com/caarlos0/dotfiles/blob/188c5f7964da8fb309484d2af9d3f713cae6ed8f/macos/set-defaults.sh

# Links

https://carlosbecker.com/posts/dotfiles-are-meant-to-be-forked/
https://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/
https://github.com/webpro/dotfiles
https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789



