#!/bin/bash
# install.sh
#
#
# creates symlinks from the homedirectory to any desired dotfiles
#

#### Variables

dir=~/dotfiles
olddir=~/dotfiles_old
files="vimrc vim zshrc"

#### Create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

#### change to ~/dotfiles
echo "Changing to $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in ~to dotfiles_old and create symlinks"
for file in $files; do
	echo "Move existing dotfiles from ~to $olddir"
	mv ~/.$file ~/dotfiles_old/
	echo "Creating symlink to $file in home directory"
	ln -s $dir/.$file ~/.$file
done
 
