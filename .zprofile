# For login shells
#------------- pyenv -------------#
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

#------------- Go -------------#
export PATH=$PATH:/usr/local/go/bin
