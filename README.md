<div align = center><img src="https://github.com/RyukiDoesIt/dotfiles/blob/main/Source/Arch.png"><br></div>

# Dotfiles

Organize my dotfiles in new setups.

## Install Dependencies
### 1. Important

- Base: [Arch](https://archlinux.org/) <br>
- Wayland Compositor: [Hyprland](https://hyprland.org/) <br>
- Bar: [Waybar](https://github.com/Alexays/Waybar) <br>
- Dmenu Program: [Rofi (lbonn Fork)](https://github.com/lbonn/rofi) <br>
- Wallpaper Daemon: [Swww](https://github.com/LGFae/swww) <br>
- Browser: [Brave](https://brave.com/linux/) <br>
- Screen locker: [Hyprlock](https://github.com/hyprwm/hyprlock)

### 2. git

Install git if not installed using `sudo pacman -Sy git` command.

### 3. oh-my-zsh

Install zsh using this command `sudo pacman -S zsh`.

Now install oh-my-zsh using this command.

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 4. zsh plugins using oh-my-zsh

zsh-autosuggestions
```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
zsh syntax highlighting
```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

### 5. Starship

Use `sudo pacman -S starship` command. For other distros use [starship](https://starship.rs/guide/#%F0%9F%9A%80-installation "starship installation")

Then add your preferred `starship.toml`, found [here](https://starship.rs/presets/ "starship presets").

### 6. eza & bat

For `eza` follow [installation guide](https://github.com/eza-community/eza/blob/main/INSTALL.md "eza installation guide"). <br>
For `bat` either use `sudo apt install bat` or `sudo pacman -S bat` depending on distro. If using `apt` package manager `bat` is installed as `batcat`. So create a symlink like this.

```sh
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat
```

### 7. Install latest neovim

For Arch just use `sudo pacman -S neovim`.

## Bootstrapping on a new setup

1. Clone the repo to a new hidden dotfiles directory.

SSH
```sh
git clone git@github.com:RyukiDoesIt/dotfiles.git ~/.dotfiles
```
HTTPS
```sh
git clone https://github.com/RyukiDoesIt/dotfiles.git ~/.dotfiles
```

2. Create symlinks in $HOME directory to real files in repo.

```sh
# Learn install script to automate this
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.config/hypr ~/.config/
ln -s ~/.dotfiles/.config/waybar ~/.config/
```
Or we can use `stow` to create symlinks automatically.
```sh
sudo pacman -S stow
```
Create the `.dotfiles` directory in `$HOME` and running `stow .` inside `~/.dotfiles`.


## TBA
