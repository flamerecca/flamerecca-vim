#!/bin/bash

app_name="flamerecca-vim"

home_variable_check() {
    if [ -z "$HOME" ]; then
        error "You must have your HOME environmental variable set to continue."
    fi
    return 0
}

program_exists() {
    local ret='0'
    command -v $1 >/dev/null 2>&1 || { local ret='1'; }

    # fail on non-zero return value
    if [ "$ret" -ne 0 ]; then
        return 1
    fi

    return 0
}

check_program_exist() {
    program_exists $1

    # throw error on non-zero return value
    if [ "$?" -ne 0 ]; then
        error "You must have '$1' installed to continue."
    fi
    return 0
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
    return 0
}

################# main()

home_variable_check

check_program_exist "vim"

check_program_exist "git"
