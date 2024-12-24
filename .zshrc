# Path to your Oh My Zsh installation.
export PATH=/home/administrator/.local/bin:$PATH
export PATH="$PATH:/opt/nvim-linux64/bin"
export ZSH="$HOME/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="frontcube"

# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)
source $ZSH/oh-my-zsh.sh
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias l="lsd -l"
alias la="lsd -l -a"
alias ll="exa -l -g --icons"
alias lla="exa -lga --icons"
alias v="nvim"
alias ga="git add"
alias gc="git commit -m"
alias gac="git commit -am"
alias gs="git status"
alias gl="git log --color --oneline --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"

# Docker Container 
export FORMAT="ID\t{{.ID}}\nNAME\t{{.Names}}\nIMAGE\t{{.Image}}\nPORTS\t{{.Ports}}\nCOMMAND\t{{.Command}}\nCREATED\t{{.CreatedAt}}\nSTATUS\t{{.Status}}\n"

