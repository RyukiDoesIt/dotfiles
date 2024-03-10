# Dotfiles

Organize my dotfiles in new setups.


## Install Dependencies

### git

Install git if not installed.

```zsh
sudo apt install git
# Or
sudo pacman -Sy git
```

### oh-my-zsh

Install zsh using this command.

```zsh
sudo apt install zsh
# Or
sudo pacman -S zsh
```

Now install oh-my-zsh using this command.

```zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### zsh plugins using oh-my-zsh

zsh-autosuggestions
```zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
zsh syntax highlighting
```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

Add the plugin `zsh-autosuggestions` and `zsh-syntax-highlighting` to the list of plugins for Oh My Zsh to load (inside `~/.dotfiles/.zshrc`).

### Starship

Use this command.

```bash
curl -sS https://starship.rs/install.sh | sh
# Or
sudo pacman -S starship
```
Then add your preferred `starship.toml`, found [here](https://starship.rs/presets/ "starship presets").

### eza & bat

For `eza` follow [installation guide](https://github.com/eza-community/eza/blob/main/INSTALL.md "eza installation guide"). <br>
For `bat` either use `sudo apt install bat` or `sudo pacman -S bat` depending on distro. If using `apt` package manager `bat` is installed as `batcat`. So create a symlink like this.

```zsh
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat
```

### Install latest neovim

For Arch just use `sudo pacman -S neovim`. <br>
To get pre-built archives use this.

```zsh
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
```
`$PATH` already in `~/.dotfiles/.zshrc`:

```sh
export PATH="$PATH:/opt/nvim-linux64/bin"
```

## Bootstrapping on a new setup

1. Clone the repo to a new hidden dotfiles directory.

```zsh
# Use SSH (if set up)
git clone git@github.com:RyukiDoesIt/dotfiles.git ~/.dotfiles
# Or use HTTPS
git clone https://github.com/RyukiDoesIt/dotfiles.git ~/.dotfiles
```

2. Create symlinks in $HOME directory to real files in repo.

```zsh
# Learn install script to automate this
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
```
Or we can use `stow` to create symlinks automatically.
```sh
sudo pacman -S stow
```
Create the `.dotfiles` directory in `$HOME` and running `stow .` inside `~/.dotfiles`.


## TBA
