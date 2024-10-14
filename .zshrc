# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

DISABLE_AUTO_TITLE="true"  # Disable auto-setting terminal title.
CASE_SENSITIVE="false"  # Use case-sensitive completion.
COMPLETION_WAITING_DOTS="true"  # Display red dots whilst waiting for completion.
HIST_STAMPS="yyyy/mm/dd"  # Time stamp shown in the history command output.

#------------- Plugins -------------#
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

#------------- User configuration -------------#
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
else
  export EDITOR='vi'
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#------------- Interactive Shells -------------#

#------------- Go -------------#
export PATH=$PATH:/usr/local/go/bin
export PATH="$PATH:$HOME/go/bin"

#------------- NVM -------------#
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

#------------- Poetry -------------#
export PATH="$HOME/.local/bin:$PATH"

#------------- Pyenv -------------#
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

#------------- Rust -------------#
export PATH="$HOME/.cargo/bin:$PATH"

#------------- Terraform -------------#
export TF_LOG=1
