# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# set CAPS LOCK key to escape
setxkbmap -option caps:escape

# "--help" shortcut function
function h() {
	$1 --help | less
}

# "--version" shortcut function
function v() {
	$1 --version
}

# "| less" shortcut function
function l() {
        $@ | less
}

# "list/which" function
function lwhich() {
        ll $(which $1)
}

unalias l
alias ls='ls --color=always'
alias ll='ls -alhF'
alias grep='grep --color=always'
alias less='less -r'
alias gits='git status'
alias tree='tree -C'
