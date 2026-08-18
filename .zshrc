# ------------------------------------------------------------------------------------- #
#%%%  ::::    ::::      :::     :::    :::  :::::::: ::::::::: ::::::::  :::    :::  %%%#
#%%   +:+:+: :+:+:+   :+: :+:   :+:    :+: :+:    :+:     :+: :+:    :+: :+:    :+:   %%#
#%%%  +:+ +:+:+ +:+  +:+   +:+   +:+  +:+  +:+    +:+    +:+  +:+        +:+    +:+  %%%#
#%%   +#+  +:+  +#+ +#++:++#++:   +#++:+   +#+    +:+   +#+   +#++:++#++ +#++:++#++   %%#
#%%%  +#+       +#+ +#+     +#+  +#+  +#+  +#+    +#+  +#+           +#+ +#+    +#+  %%%#
#%%   #+#       #+# #+#     #+# #+#    #+# #+#    #+# #+#     #+#    #+# #+#    #+#   %%#
#%%%  ###       ### ###     ### ###    ###  ######## ######### ########  ###    ###  %%%#
# ------------------------------------------------------------------------------------- #

fpath=("$ZDOTDIR/functions" $fpath)

# Source VTE integration
if [[ -n "$VTE_VERSION" ]]; then
    for file in /etc/profile.d/vte*.sh; do
        [[ -r "$file" ]] || continue
        source "$file"
        break
    done
fi

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
mz-toggle_dock off
