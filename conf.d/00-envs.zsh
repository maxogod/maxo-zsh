# Environment variables, PATHs, and history settings

# --- Environment variables --- #

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# --- Path editions --- #

export PATH="$PATH:$(go env GOPATH)/bin"
