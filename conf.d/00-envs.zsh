# Environment variables, PATHs, and history settings

# --- Environment variables --- #

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

export EDITOR=nvim
export PNPM_HOME="/home/maxo/.local/share/pnpm"

# --- Path editions --- #

export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.local/bin"
if [ -d "$PNPM_HOME/bin" ]; then
  export PATH="$PATH:$PNPM_HOME/bin"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
