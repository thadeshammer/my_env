# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/.local/bin:PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(k zsh-syntax-highlighting zsh-nvm)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# alias subl="/mnt/c/Program\ Files/Sublime\ Text\ 3/subl.exe '`wslpath -w .`'"

# ls colors from https://github.com/romkatv/powerlevel10k/issues/805
# export LS_COLORS='rs=0:no=00:mi=00:mh=00:ln=01;36:or=01;31:di=01;34:ow=04;01;34:st=34:tw=04;34:pi=01;33:so=01;33:do=01;33:bd=01;33:cd=01;33:su=01;35:sg=01;35:ca=01;35:ex=01;32:'

#make cd use the ls colours, from https://gist.github.com/seahrh/9e6940f76b423f1bf97cbf45f0c377ef
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
autoload -Uz compinit
compinit

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# allow the jump down due to slow start-time
# https://github.com/romkatv/powerlevel10k/blob/master/README.md#instant-prompt
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# a good reference too: https://gist.github.com/leodutra/a6cebe11db5414cdaedc6e75ad194a00

# Python 3.10 is default, 3.11 is from a 3rd party repo because weeeeeee linux
# update 2025-04-22 I built 3.12 from source
VERSION="3.12"
alias pybase="python$VERSION"

alias python="python"
alias py="python"
alias python3="python"

alias pip="pip$VERSION"
alias pip3="pip$VERSION"

alias pytest='python -m pytest'

# VIRTUAL ENV STUFF
# If using oh-my-zsh
export VIRTUAL_ENV_DISABLE_PROMPT=0
export WORKON_HOME=$HOME/.virtualenvs
alias activate="source .venv/bin/activate"

# Enable virtualenvwrapper if you use it
if [ -z "$VIRTUAL_ENV" ]; then
    export VIRTUALENVWRAPPER_PYTHON="python$VERSION"
    source /home/thades/.local/bin/virtualenvwrapper.sh
fi

export PATH=$PATH:$HOME/.local/bin:/snap/bin

# https://kivy.org
export KIVY_DEPS_ROOT=$(pwd)/kivy-dependencies

alias less="less -X"
alias more="less -X"
alias fzf="fzf --preview='cat {}'"
alias pytest="pytest -s"
alias clip="clip.exe"
alias pbcopy="clip.exe"

# neovim
export PATH="$PATH:/opt/nvim/"
export EDITOR=nvim
export VISUAL=nvim

# for servers using my cert
export CERT_PASSKEY=$(cat ~/.cert_passkey)

# if WSL-side has control of ssh agent
# eval $(ssh-agent -s)
# eval `keychain --eval --agents ssh id_ed25519`

# if Windows-side has control of ssh agent
# export SSH_AUTH_SOCK=/mnt/c/Users/Thades/AppData/Local/ssh-agent.ssh
# This one uses the "interop socket" whatever that is
# export SSH_AUTH_SOCK=$(wslpath "$(powershell.exe -Command "[Environment]::GetEnvironmentVariable('SSH_AUTH_SOCK', 'Process')" | tr -d '\r')")
export SSH_AUTH_SOCK=/mnt/c/Users/$USER/AppData/Local/ssh-agent.sock

# for tmux
export TERM="xterm-256color"
export COLORTERM="truecolor"

# Unbind Ctrl-H/J/K/L
# Don't forget unbinding in .inputrc too
bindkey -r "^H"
bindkey -r "^J"
bindkey -r "^K"
bindkey -r "^L"

# trying out starship. to toggle back to p10k, uncomment the source p10k line and the ZSH_THEME line (two lines!)
eval "$(starship init zsh)"
