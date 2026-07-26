# Aliases and small functions

# --- Aliases --- #

alias vim=nvim

if [[ -x /usr/bin/dircolors ]]; then
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

# --- Funcs --- #

srm() { shred "$@" && rm -f "$@"; }
