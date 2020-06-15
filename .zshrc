# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# SOURCE
source ~/.fonts/*.sh
source ~/.config/functions

# ENV
export EDITOR="nvim"
export SUDO_EDITOR="nvim"

export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# PATHS
export PATH=$PATH:$HOME/Applications/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/KIIP/bin

# CONFIGS
autoload -U compinit
compinit
/home/annahri/.local/kitty.app/bin/kitty + complete setup zsh | source /dev/stdin

autoload -U promptinit
promptinit

# Path to your oh-my-zsh installation.
export ZSH="/home/annahri/.oh-my-zsh"
export FZF_BASE="/usr/share/fzf"

# Theme
ZSH_THEME="minimal"

# Oh My ZSH plugins
plugins=(
command-not-found
history
fzf
git
sudo
zsh-syntax-highlighting
dnf
)
source $ZSH/oh-my-zsh.sh
source ~/.config/aliases

test -r "~/.dir_colors" && eval $(dircolors ~/.dircolors)
ls > /dev/null

# MOTD
hijri.sh | figlet -f slant -t -c
