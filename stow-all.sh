#!/usr/bin/bash
for dir in */ ; do
	stow --dotfiles $dir
done
