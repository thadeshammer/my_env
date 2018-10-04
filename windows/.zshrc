# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false

POWERLEVEL9K_STATUS_VERBOSE=true

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_logo status dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs)

# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="╭─"
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
# POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="╰─"
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="▷ "

POWERLEVEL9K_DIR_PATH_SEPARATOR=" "$'\uE0B1'" "
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='255'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='135'
POWERLEVEL9K_DIR_HOME_FOREGROUND='255'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='255'

# https://en.wikipedia.org/wiki/Dingbat#Unicode
# POWERLEVEL9K_CUSTOM_LOGO="echo '☠ '"
POWERLEVEL9K_CUSTOM_LOGO="echo '☯ '"
POWERLEVEL9K_CUSTOM_LOGO_BACKGROUND='0'
POWERLEVEL9K_CUSTOM_LOGO_FOREGROUND='255'

# from: http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
# colors for dark terminal themes
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# colors for light terminal themes
#export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git git-prompt brew osx)
plugins=(		history history-substring-search
			colorize colored-man-pages

			# causes "_z_precmd:1: nice(5) failed: operation not permitted"
			# which is supposed to be fixed in recent versions of z but not here?
			# z

			cp dirpersist copydir
			zsh-navigation-tools
			k zsh-syntax-highlighting
		)

# User configuration

source $ZSH/oh-my-zsh.sh

# if it's me, don't preface the prompt with my name@system
DEFAULT_USER="thade"

export PATH="$HOME/bin:$PATH"

# make the history command and history searches more powerful
#
# It's not clear to me that any of this works in zsh; the
# timestamp definitely doesn't work. (that's set above)
# history is aliased to fc (whatever that is, I have yet
# to find it) in oh-my-zsh
#
export HISTCONTROL=erasedups
export HISTSIZE=10000
export HISTFILESIZE=10000
setopt HISTAPPEND

# -X for not clearing the screen when you exit less, and -r for colors
# We get colors via pygmentize (which I needed to pip install)
export LESS=Xr
# NOTE. I've disabled this as it's never really useful (highlighting
# numbers and C reserved words makes for confusing log readouts.)
# export LESSOPEN='|pygmentize -g %s'


# alias grep='grep -HEn --color'
alias grep='grep --color'

alias ls='ls -GFh'

alias lc='wc -l'

alias diff='colordiff'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias sr='screen -r'
alias sls='screen -ls'
alias sh=bash
alias dirs='dirs -v'

setopt nobgnice

source ~/git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_HIGHLIGHT_STYLES[globbing]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=cyan,bold
