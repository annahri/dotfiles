# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# SOURCE
source ~/.fonts/*.sh
source ~/.config/aliases
source ~/.config/functions

# ENV
export EDITOR="nvim"

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
ZSH_THEME="gianu"

# Oh My ZSH plugins
plugins=(
  command-not-found
	history
  fzf
	fedora
  git
  sudo
  zsh-syntax-highlighting
	yum
)
source $ZSH/oh-my-zsh.sh
