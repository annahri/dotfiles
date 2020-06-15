# Path Exports
set -x PATH $HOME/.local/bin $PATH
set -x PATH $HOME/KIIP/bin $PATH
set -x EDITOR nvim
set -x SUDO_EDITOR nvim

## Aliases
alias cekip="ip -4 -br -c addr show"
alias cekif="ip -4 -br -c link show"
alias pbcopy="xclip -selection clipboard"

# alias ls="exa --sort type"
alias ll="exa -lh --group-directories-first --sort ext"
alias la="exa -lah --group-directories-first --sort ext"
alias lld="exa -lh --group-directories-first --sort mod"
alias lln="exa -lh --group-directories-first --sort .name"
alias lls="exa -lg --group-directories-first --sort size"
alias vim="nvim"

alias b="cd ..; exa -lh --group-directories-first --sort ext"
alias gb="cd $OLDPWD; exa -lh --group-directories-first --sort ext"

# Shortcut
alias issproj="cd $HOME/Vascomm/ISS/projects"
alias rekaman="cd $HOME/Music"

# Git
alias ga="git add"
alias gcmsg="git commit -m"
alias gst="git status"
alias gp="git push"
alias gpu="git pull"

# DNF
alias dnfi="sudo dnf install"
alias dnfs="dnf search"

if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

test -r "~/.dir_colors" && eval (dircolors ~/.dir_colors)
ls > /dev/null
