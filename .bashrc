source ~/.bash-powerline.sh

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

#export PS1="[ \u@\h \W \\$] \[$(tput sgr0)\]"

# ALIASES
alias code=code-oss
alias whatsapp='/opt/google/chrome/google-chrome --profile-directory=Default --app-id=bgkodfmeijboinjdegggmkbkjfiagaan'
alias photopea='/opt/google/chrome/google-chrome --profile-directory=Default --app-id=jdklklfpinionkgpmghaghehojplfjio'
alias cekip='ip -4 -br -c a s'
alias cekif='ip -4 -br -c link show'
alias salin='cp -p'
alias l='ls -alh'
alias ll='ls -lh'

# PATHS
export PATH=$PATH:/usr/local/share/dotnet
#export DOTNET_ROOT=/usr/local/share/dotnet 
#export MSBuildSDKsPath=$DOTNET_ROOT/sdk/$(dotnet --version)/Sdks
#export PATH=$MSBuildSDKsPath:$PATH
export PATH=$PATH:/usr/local/share/dotnet/tools
export PATH=$PATH:/snap/bin
export PATH=$PATH:$HOME/.local/bin
