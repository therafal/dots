SUPER_USER="sudo"

# Aliases
alias sudo="$SUPER_USER "
alias doas="$SUPER_USER "

# terminal utils
alias q='exit'
alias c='clear'

# paru
alias in='paru -S'
alias yeet='paru -Runs'

# ls
alias eza='eza --icons --git'
alias l='eza -l'
alias ls='eza -l'
alias ll='eza -la'
alias ld='eza -lD'

# cat
alias bat='bat --theme="base16" --style="numbers,changes,header" --italic-text=always --decorations=always'
alias cat='bat'

# terminal utils
alias icat='kitten icat'
alias cpw='wl-copy'

# git
alias g='git'
alias lg='lazygit'

# editor
alias nvim="$EDITOR"
alias vim='nvim'
alias vi='nvim'
alias v='nvim'

# download audio
alias audl='yt-dlp -f bestaudio -x --audio-format opus --audio-quality 320k --embed-thumbnail --add-metadata --metadata-from-title "%(artist)s - %(title)s" --output "%(title)s.%(ext)s"'

# mpd player
alias mp='tmux new-session -s $$ "tmux source-file ~/.config/ncmpcpp/tsession"'

# Suffix aliases
# images
alias -s png=icat
alias -s jpg=icat
alias -s svg=icat

# videos
alias -s mp4=mpv
alias -s mov=mpv
alias -s mkv=mpv

# markdown
alias -s md=glow
