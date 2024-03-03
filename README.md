# Dotfiles

Organize my dotfiles in new setups.

## Bootstrapping on a new setup

1. Install git if not installed.

```zsh
# For Debian/Ubuntu/Mint
sudo apt install git
# For Fedora
sudo dnf install git
# For Arch
sudo pacman -Sy git
```

2. Clone the repo to a new hidden dotfiles directory.

```zsh
# Use SSH (if set up)
git clone git@github.com:RyukiDoesIt/dotfiles.git ~/.dotfiles
# Or use HTTPS
git clone https://github.com/RyukiDoesIt/dotfiles.git ~/.dotfiles
```

3. Create symlinks in $HOME directory to real files in repo.

```zsh
# Learn install script to automate this
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
```

## Install Other tools

### oh-my-zsh

Install zsh using this command.

```zsh
# For Debian/Ubuntu
sudo apt install zsh
#For Arch
sudo pacman -S zsh
```

Now install oh-my-zsh using this command.

```zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### zsh plugins using oh-my-zsh

```zsh
# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

Add the plugin `zsh-autosuggestions` and `zsh-syntax-highlighting` to the list of plugins for Oh My Zsh to load (inside `~/.dotfiles/.zshrc`).

### Starship

Use this command.

```bash
curl -sS https://starship.rs/install.sh | sh
```
Then add your preferred `starship.toml`.

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

## TBA
