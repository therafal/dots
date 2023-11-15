SUPER_USER="sudo"

# Aliases
alias doas="$SUPER_USER "
alias sudo="$SUPER_USER "
alias es="$SUPER_USER "

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
alias cf='wl-copy <'
alias pf='wl-paste >'
alias cv='ffmpeg -i'

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

# neofetch
alias nf='neofetch'

# mpd player
alias mp='tmux new-session -s $$ "tmux source-file ~/.config/ncmpcpp/tsession"'

# power management
alias poweroff='sudo loginctl poweroff'
alias reboot='sudo loginctl reboot'
alias logout='loginctl terminate-session ""'
alias lock='swaylock'

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
