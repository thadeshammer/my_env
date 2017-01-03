# Path to your oh-my-zsh installation.
export ZSH=/Users/shannum/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
#ZSH_THEME="amuse"
 # ZSH_THEME="ys"

# ZSH_THEME="powerlevel9k-async"
# POWERLEVEL9K_RPROMPT_RENDER_ASAP=true

ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false

POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_STATUS_VERBOSE=true

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status dir)
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status history dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs)

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="╭─"
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="╰─"
POWERLEVEL9K_DIR_PATH_SEPARATOR=" "$'\uE0B1'" "

# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="\n"
# POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="%K{white}%F{black} `date +%T` \UE12E %f%k%F{white}%f "

# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
# POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX=""

# from: http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
# colors for dark terminal themes
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='255'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='135'

POWERLEVEL9K_DIR_HOME_FOREGROUND='255'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='255'

# colors for light terminal themes
#export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git git-prompt brew osx)
plugins=(	osx
			history history-substring-search
			colorize colored-man-pages
			z cp dirpersist copydir
			nyan
		)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# Seems this is unnecessary?
#source $HOME/bin/git-completion.zsh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# if it's me, don't preface the prompt with my name@system
DEFAULT_USER="shannum"


#
# "It is a good idea to put code that does not need to be run for
# every single instsance behind a test of the form [below] so that
# it will not be executed when zsh is invoked with the -f option."
#
# See http://zsh.sourceforge.net/Doc/Release/Files.html#Files
#

# if [[ -o rcs ]]; then
# fi


#
#	Ported from .bash_profile (Thanks, Goddards!)
#

#
# Modula, Perl, and Ant stuff is all for modula (and maybe gradle)
# Puppet's a big player in Vagrant town.
#

( eval "~/git/modula/Cogito/Toolset/Modula/BUILD/bin/modula init > /Users/shannum/logs/bash_profile.log 2>&1" )

export ANT_HOME=/usr/local/bin/ant
export PUPPET_DIR=/Users/shannum/git/puppet
export MODULA_DIR=/Users/shannum/git/modula/Cogito/Toolset/Modula/BUILD/bin/

PATH="/Users/shannum/perl5/bin${PATH:+:${PATH}}"; export PATH;

export PATH=$MODULA_DIR:$PATH

PERL5LIB="/Users/shannum/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/shannum/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/shannum/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/shannum/perl5"; export PERL_MM_OPT;

export PATH="$HOME/bin:$PATH"

# start an ssh agent for vagrant
source ~/bin/ssh-agent-init.sh

# Currently I'm getting subl in my env w/o using this export.
# subl's on the path.
#export GIT_EDITOR='$HOME/bin/subl'

# Added for rbenv so I can run gem install sometimes.
eval "$(rbenv init -)"

# Put full path into the iTerm2 title bar (OS X)
echo -ne "\033]0;$PWD\007"

# to incorporate branch name into PS1
# source ~/bin/git-prompt.sh
# export GIT_PS1_SHOWDIRTYSTATE=1

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
#
# NOTE -r/R don't seem to work for colors :\; need to prepend CLICOLORS_FORCE=1
# I'm trying here to export CLICOLORS_FORCE=1 but that doesn't work either;
# only works if I *explicitly prepend* it, e.g.
#
#   [1] > CLICOLORS_FORCE=1 ls -l | less
#
export CLICOLORS_FORCE=1
export LESS=-Xr

export EDITOR='subl -w'

export GROOVY_HOME=/usr/local/opt/groovy/libexec

#
# I alias a lot of stuff because I'm lazy AND I like pretty things.
#

alias gw="./gradlew"
alias gwx="gw -x vagrantprovisioncustom -x vagrantboxupdate -x loadhealthkingusers -x loadhealthkingtypes -x loadhealthkingcalls"
alias gwdeps="gw generateLock saveLock --refresh-dependencies"

alias grep='grep -HEn --color'

alias ls='ls -GFh'

alias lc='wc -l'

alias diff='colordiff'

alias vg='vagrant'
alias vgs='vagrant global-status'
alias vgdf='vagrant destroy -f'

alias man='man-preview'

# Not nearly as amazing as Sublime, but it has native support
# for reading and editing OS X specific configurations which
# are otherwise in gross binary.
alias textwrangler='open -a /Applications/TextWrangler.app'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias emacs='emacs -g 87x50'
alias sr='screen -r'
alias sls='screen -ls'
alias sh=bash
alias dirs='dirs -v'

pdiff () {
	# because you can't alias and get "$@" & to work.
	/Applications/p4merge.app/Contents/MacOS/p4merge "$@" &
}

gitpretty () {
	echo --format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset'
}

# Arcanist is (I believe) a Phabricator wrapper script; I haven't used it yet.
# This is a remnant from ggodard's bashrc file I adopted.
# add arcanist to path
# export PATH=~/local/arcanist/bin:$PATH

source ~/.zsh_support/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_HIGHLIGHT_STYLES[globbing]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=cyan,bold
