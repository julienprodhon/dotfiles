export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
    git
    sudo
    command-not-found
    colored-man-pages
    extract
    z
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'
export VISUAL='nvim'

alias v='nvim'
alias vim='nvim'
alias zshconfig='nvim ~/.zshrc'
alias reload='source ~/.zshrc'
