# Oh My Zsh
export ZSH="/Users/aivanov/.oh-my-zsh"
ZSH_THEME="agnoster"
ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

# Disable sharing history between tabs
unsetopt inc_append_history
unsetopt share_history

# Aliases
alias watch='watch '
alias lah='ls -lah'
alias k='kubectl'
alias kgpa='kubectl get pods -A'
alias kgpn='kubectl get pods -n'
alias kl='kubectl logs'
alias kx='kubectx'
alias g='git'
alias tf='terraform'
alias vpn-connect='networksetup -connectpppoeservice "Travix Meraki test"'
alias vpn-disconnect='networksetup -disconnectpppoeservice "Travix Meraki test"'
alias weather='curl http://wttr.in/'

# Neovim
# export PATH="$HOME/nvim-osx64/bin:$PATH"
export PATH="$HOME/nvim-macos/bin:$PATH"
# LunarVim
export PATH="$HOME/.local/bin:$PATH"

# Kubectl
source <(kubectl completion zsh)
# Kubectl Krew
export PATH="$PATH:${KREW_ROOT:-$HOME/.krew}/bin"

# Python
# alias python=$(which python3)
# alias pip=$(which pip3)
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

#Ruby
eval "$(rbenv init -)"
export GEM_HOME="$HOME/.gem"

# Java
export PATH="$PATH:$HOME/.jenv/bin"
eval "$(jenv init -)"

# Javascript
export PATH=$PATH:$(npm get prefix)/bin

# Rust
export PATH="$PATH:${HOME}/.cargo/bin"

# Power10K
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quite

# Oh My Zsh Plugins
plugins=(git ansible helm)

# Google SDK
if [ -f '/Users/aivanov/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/aivanov/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/aivanov/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/aivanov/google-cloud-sdk/completion.zsh.inc'; fi

# Local bins
export PATH="/usr/local/sbin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/aivanov/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/aivanov/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/aivanov/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/aivanov/google-cloud-sdk/completion.zsh.inc'; fi

# Use `gke-gcloud-auth-plugin` to authnenticate against Google API
export USE_GKE_GCLOUD_AUTH_PLUGIN=True

export PATH="$PATH:/Users/aivanov/.bin"

# Use GPG for git signed commits
if [ -r ~/.zshrc ]; then echo -e '\nexport GPG_TTY=$(tty)' >> ~/.zshrc; \
  else echo -e '\nexport GPG_TTY=$(tty)' >> ~/.zprofile; fi

source /Users/aivanov/.docker/init-zsh.sh || true # Added by Docker Desktop

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)

export GPG_TTY=$(tty)
