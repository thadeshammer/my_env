# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="babun"

# ZSH_THEME="dritter-powerlevel9k/powerlevel9k"
ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false

POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_STATUS_VERBOSE=true

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status dir)
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status history dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs)

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="╭─"
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="╰─"
POWERLEVEL9K_DIR_PATH_SEPARATOR=" "$'\uE0B1'" "

POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='255'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='135'

POWERLEVEL9K_DIR_HOME_FOREGROUND='255'
POWERLEVEL9K_DIR_HOME_BACKGROUND='027'

POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='255'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='027'

# I don't think there's an os icon for cygwin. <_<
# POWERLEVEL9K_OS_ICON_BACKGROUND="blue"
# POWERLEVEL9K_OS_ICON_FOREGROUND="white"

DISABLE_AUTO_UPDATE="true"

# favorite plugins I've picked up
# git clone https://github.com/supercrabtree/k $HOME/.oh-my-zsh/custom/plugins/k $HOME/.oh-my-zsh/custom/plugins/k
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
# git clone https://github.com/srijanshetty/zsh-pandoc-completion.git ./zsh-pandoc-completion

plugins=(	history history-substring-search
			colorize colored-man-pages
			z cp dirpersist copydir
			zsh-navigation-tools zsh_reload
			k zsh-syntax-highlighting
		)

DEFAULT_USER="Steven"

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH

source $ZSH/oh-my-zsh.sh

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

HIST_STAMPS="yyyy-mm-dd"
export HISTCONTROL=erasedups
export HISTSIZE=10000
export HISTFILESIZE=10000
setopt HISTAPPEND

export SSH_KEY_PATH="~/.ssh/id_rsa"

PATH="$HOME/bin:$PATH"

# Setting JAVA_HOME in Windows system env and using it here
# is what did the trick.
PATH="$PATH:${JAVA_HOME}:${JAVA_HOME}/bin"
export PATH

export CLICOLORS_FORCE=1
export LESS=-Xr

export EDITOR='subl -w'

export GROOVY_HOME=/usr/local/opt/groovy/libexec

# aliases

alias subl='$HOME/bin/subl_cygwrap.sh'

alias grep='grep -HEn --color'

alias ls='ls -GFh'

alias lc='wc -l'

alias diff='colordiff'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias emacs='emacs -g 87x50'
alias sr='screen -r'
alias sls='screen -ls'
alias sh=bash
alias dirs='dirs -v'

alias n-h='n-history'
alias n-ls='n-panelize ls'

# source shell script to add autocomplete to git commands
# I don't think I need this with powerlevel9k
# source ~/bin/git-completion.bash

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/Steven/.sdkman"
[[ -s "/home/Steven/.sdkman/bin/sdkman-init.sh" ]] && source "/home/Steven/.sdkman/bin/sdkman-init.sh"
