# Path to your oh-my-zsh installation.
export ZSH=/Users/shannum/.oh-my-zsh

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
plugins=(	osx
			history history-substring-search
			colorize colored-man-pages
			z cp dirpersist copydir
			zsh-navigation-tools
			k zsh-syntax-highlighting
			nyan
		)

# User configuration

source $ZSH/oh-my-zsh.sh

ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# start an ssh agent for vagrant
source ~/bin/ssh-agent-init.sh

# if it's me, don't preface the prompt with my name@system
DEFAULT_USER="shannum"

# Stuff exclusive to werk.

# Added by YAML::XS install. See:
# https://confluence.cogitocorp.com/pages/viewpage.action?spaceKey=ENG&title=Development+Environment+Setup+for+New+Engineers
PERL5LIB="/Users/shannum/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/shannum/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/shannum/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/shannum/perl5"; export PERL_MM_OPT;

export ANT_HOME=/usr/local/bin/ant
export PUPPET_DIR=/Users/shannum/git/puppet
export MODULA_DIR=/Users/shannum/git/modula/Cogito/Toolset/Modula/BUILD/bin/

PATH="/Users/shannum/.rbenv/shims:/Users/shannum/perl5/bin${PATH:+:${PATH}}"; export PATH;

export PATH="$PATH:/Users/shannum/bin:/Users/shannum/git/modula/Cogito/Toolset/Modula/BUILD/bin/:/Users/shannum/perl5/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/munki:/Users/shannum/local/arcanist/bin/"

export PATH=$MODULA_DIR:$PATH
export PATH="$HOME/bin:$PATH"

export M2_REPO="/Users/shannum/.m2/repository"

# Currently I'm getting subl in my env w/o using this export.
# subl's on the path.
#export GIT_EDITOR='$HOME/bin/subl'

# Added for rbenv so I can run gem install sometimes.
eval "$(rbenv init -)"

# Put full path into the iTerm2 title bar (OS X)
echo -ne "\033]0;$PWD\007"

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

export EDITOR='subl -w'

export GROOVY_HOME=/usr/local/opt/groovy/libexec

#
# I alias a lot of stuff because I'm lazy AND I like pretty things.
#

alias gw="./gradlew"
alias gwx="gw -x vagrantprovisioncustom -x vagrantboxupdate -x loadhealthkingusers -x loadhealthkingtypes -x loadhealthkingcalls"
alias gwdeps="gw generateLock saveLock --refresh-dependencies"
alias gwe="gw cleanEclipse eclipse"

# alias grep='grep -HEn --color'
alias grep='grep --color'

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

alias arcdiff='arc diff --no-amend master'

pdiff () {
	# because you can't alias and get "$@" & to work.
	/Applications/p4merge.app/Contents/MacOS/p4merge "$@" &
}

# Arcanist is (I believe) a Phabricator wrapper script; I haven't used it yet.
# This is a remnant from ggodard's bashrc file I adopted.
# add arcanist to path
export PATH="$PATH:~/arcanist/arcanist/bin"

source ~/.zsh_support/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_HIGHLIGHT_STYLES[globbing]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=cyan,bold

# # Haven't put time into figuring out why this (mostly repetitive and weirdly placed) export appeared here, but without it shit breaks.
# export PATH="$PATH:/Users/shannum/.rbenv/shims:/Users/shannum/bin:/Users/shannum/git/modula/Cogito/Toolset/Modula/BUILD/bin/:/Users/shannum/perl5/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/munki:/Users/shannum/local/arcanist/bin/"

eval "$(register-python-argcomplete cloudgito)"