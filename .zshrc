# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# Path to powerlevel10k theme
# source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# Add wisely, as too many plugins slow down shell startup.
plugins=(git sudo)

# Aliases
alias vim='nvim' # neovim
alias ls='eza -l --icons=auto' # long list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias tree='eza --tree --icons=auto' # tree view
alias ld='eza -lhD --icons=auto' # long list directories
alias cat='bat'
alias pcat='bat -p'
alias btop='btop --utf-force'
alias un='$aurhelper -Rns' # uninstall package
alias up='$aurhelper -Syu' # update system/package/aur
alias pl='$aurhelper -Qs' # list installed package
alias s='sudo pacman -Ss' # list availabe pacman package
alias ps='paru -Ss' # list availabe aur package
alias pc='$aurhelper -Sc' # remove unused cache
alias ro='paru -Qtdq | paru -Rns -' # remove unused packages, also try > $aurhelper -Qqd | $aurhelper -Rsu --print -
alias code='codium --ozone-platform=wayland' # gui code editor

# Useful Aliases
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Always mkdir a path (this doesn't inhibit functionality to make a singl>
alias mkdir='mkdir -p'

# Fixes "Error opening terminal: xterm-kitty" when using the default kitty term to open some programs through ssh
alias ssh='kitten ssh'

# Source antidote
source $HOME/.antidote/antidote.zsh
antidote load $HOME/.zsh_plugins.txt

# Starship eval
eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"
