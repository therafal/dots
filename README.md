<div align="center">
    <h1 style="color: red;">THIS IS STILL A WIP PROJECT</h1>
</div>

## Installation

### Install paru

> See the [guide](https://github.com/Morganamilo/paru#installation)

### Install dependencies

> If you use a NVIDIA GPU, install `hyprland-nvidia-git`

> If you use an init system other than `systemd`, you're on your own

```sh
paru -S zsh tmux-git sddm-git eza-git bat less oh-my-zsh-git ttf-iosevka-nerd ttf-uzura-font inter-font \
zsh-syntax-highlighting-git zsh-autosuggestions-git pipewire pipewire-pulse pipewire-alsa pipewire-jack \
wireplumber lsp-plugins calf glow-git mpv tofi-git lazygit-git neovim-git dunst-git swayidle-git \
swaylock-effects-git grim slurp swappy wl-clipboard ripgrep npm bibata-cursor-theme hyprland-git \
kora-icon-theme-git opentabletdriver-git xdg-desktop-portal-hyprland bottom cava-git kitty \
neofetch playerctl-git yt-dlp python-mutagen lf-git mpd ncmpcpp 
```

### Set the zsh as a default shell

```sh
chsh -s $(which zsh)
```

### For automatic login

> Change the `User` in file to your username

```sh
sudo cp -r etc/* /etc/
```

### Install the dotfiles

```sh
git clone https://github.com/therafal/dots
cd dots
cp -r configs/* ~/.config/
cp home/* ~
```
