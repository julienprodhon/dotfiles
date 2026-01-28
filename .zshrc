# Basic completion
autoload -U compinit && compinit

# Word movement (Ctrl+Arrow)
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE

# Plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Modern tools
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"
eval "$(uv generate-shell-completion zsh)"

# Editor
export EDITOR='nvim'
export VISUAL='nvim'

# Colored man pages
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Aliases
alias v='nvim'
alias vim='nvim'
alias zshconfig='nvim ~/.zshrc'
alias reload='source ~/.zshrc'
alias ls='eza'
alias ll='eza -lah'
alias cat='bat'

# Extract function
extract() {
    if [ -f $1 ]; then
        case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar x $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)           echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# Starship prompt (must be at the end)
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"
export PATH="$HOME/.local/bin:$PATH"
