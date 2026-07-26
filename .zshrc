fpath=("$ZDOTDIR/functions" $fpath)

# Autoload functions
if [[ -d "$ZDOTDIR/functions" ]]; then
  for func in "$ZDOTDIR/functions"/*(N:t); do
    autoload -Uz "$func"
  done
fi

# Source configuration
if [[ -d "$ZDOTDIR/conf.d" ]]; then
  for config_file in "$ZDOTDIR/conf.d"/*.zsh(N); do
    source "$config_file"
  done
fi

# Default executions
toggle_dock off
