#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles            # dotfiles directory
olddir=~/dotfiles_old     # old dotfiles backup directory
files="bashrc zshrc bash_profile"      # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating dotfiles_old in homedir"
mkdir -p $olddir
echo "...done"

# change to dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do 
    echo "Moving $file from ~ to $olddir"
    mv ~/.$file $olddir
    echo "Creating symlink to $file in ~"
    ln -s $dir/$file ~/.$file
done
