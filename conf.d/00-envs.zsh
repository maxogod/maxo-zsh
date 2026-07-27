# Environment variables, PATHs, and history settings

# --- Environment variables --- #

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# --- Path editions --- #

export PATH="$PATH:$(go env GOPATH)/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
