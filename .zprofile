# For login shells
#------------- brew -------------#
eval "$(/opt/homebrew/bin/brew shellenv)"

#------------- go -------------#
export PATH=$PATH:/usr/local/go/bin

#------------- orb -------------#
source ~/.orbstack/shell/init.zsh 2>/dev/null || :  # Added by OrbStack: command-line tools and integration

#------------- pyenv -------------#
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
