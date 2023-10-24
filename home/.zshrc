ZSH=/usr/share/oh-my-zsh/

# Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# Default editor for local and remote sessions
if [[ -n "$SSH_CONNECTION" ]]; then
  # on the server
  if [ command -v nvim >/dev/null 2>&1 ]; then
    export EDITOR='nvim'
  else
    export EDITOR='vi'
  fi
else
  export EDITOR='nvim'
fi

# Oh My Zsh
ZSH_DISABLE_COMPFIX=true

# OMZ is managed by Sheldon
source $ZSH/oh-my-zsh.sh

plugins=(
    git
    history-substring-search
    npm
    sudo
)

# ZSH plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

source $HOME/.config/zsh/aliases.zsh

# Highlighting
typeset -A ZSH_HIGHLIGHT_STYLES

ZSH_HIGHLIGHT_STYLES[alias]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=white,bold'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=white,bold'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=white,bold'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=white,bold'


# Starship
eval "$(starship init zsh)"
