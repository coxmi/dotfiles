
#Notes

for DOTFILE in `find /Users/Michael/Projects/dotfiles`
do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done


#Links

https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789