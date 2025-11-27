# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="kphoen"
plugins+=(zsh-vi-mode)
source $ZSH/oh-my-zsh.sh

# !! Temorary, for ML Ops recordings
export HOST="local"
export HOSTNAME="local"

alias vim="nvim"
alias vimdiff="nvim -d"
export LANG=en_US.UTF-8
export PATH="$HOME/.local/bin:$PATH"
export UV_PYTHON_PREFERENCE="only-managed"
export GIT_EDITOR="nvim"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# end nvm

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/d2b/dev/misc/google-cloud-sdk/path.zsh.inc' ]; then . '/home/d2b/dev/misc/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/d2b/dev/misc/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/d2b/dev/misc/google-cloud-sdk/completion.zsh.inc'; fi

# Go
export PATH="$PATH:$HOME/.local/go/bin"
export PATH="$PATH:$HOME/go/bin"

# Ghostty profile swapper
alias ghostty-dev="$HOME/dev/dotfiles/scripts/ghostty-switch-profile.sh dev"

alias ghostty-rec="$HOME/dev/dotfiles/scripts/ghostty-switch-profile.sh recording"
