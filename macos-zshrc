# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# use vim keybindings for the terminal, undo emacs pinky
export PATH=$HOME/.bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="kphoen"
HOSTNAME="local"
source $ZSH/oh-my-zsh.sh
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh


# libsql
export PATH="$HOME/code/libsql/target/debug:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# nvim etc.
alias vim="nvim"
alias vimdiff="nvim -d"
export LANG=en_US.UTF-8
export PATH="$HOME/.local/share/nvim/mason/bin:$PATH"

# local fun bin
export PATH="$HOME/.local/bin:$PATH"
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/d2b/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


#pdm
export PATH="/Users/d2b/Library/Python/3.9/bin:$PATH"
#pdm end


# ollama
export OLLAMA_MODELS="/Volumes/ansatz-sd/ml-ai/ollama/models"

export UV_PYTHON_PREFERENCE="only-managed"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/d2b/scratch/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/d2b/scratch/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/d2b/scratch/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/d2b/scratch/google-cloud-sdk/completion.zsh.inc'; fi
