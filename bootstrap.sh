#!/bin/bash

app_name="flamerecca-vim"

home_variable_check() {
    if [ -z "$HOME" ]; then
        error "You must have your HOME environmental variable set to continue."
    fi
}

backup() {
	backup_target=$HOME/.vimrc
	# if backup_target exists
	if [ -e "$backup_target" ]; then
		backup_path=$HOME/.backup-vim
		mkdir -p $backup_path
		mv $HOME/.vimrc $backup_path
		res="$?"
		success "~/.vimrc already backup to ${backup_path}."
	fi
}

################# main()

home_variable_check
