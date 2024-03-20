set encoding=UTF-8

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Google SDK
if [ -f '/Users/aleksandar/google-cloud-sdk/path.bash.inc' ]; then . '/Users/aleksandar/google-cloud-sdk/path.bash.inc'; fi
if [ -f '/Users/aleksandar/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/aleksandar/google-cloud-sdk/completion.bash.inc'; fi
