# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

export PS1="[\u@\h \W \\$] \[$(tput sgr0)\]"

# PATHS
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/KIIP/bin
export EDITOR=nvim
export SUDO_EDITOR=nvim

source ~/.config/aliases
source ~/.config/functions

# MOTD
hijri.sh | figlet -t -c -f slant
ls > /dev/null
