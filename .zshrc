# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH=$HOME:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH="$PATH:/usr/local/bin"
export FORMAT="ID\t{{.ID}}\nNAME\t{{.Names}}\nIMAGE\t{{.Image}}\nPORTS\t{{.Ports}}\nCOMMAND\t{{.Command}}\nCREATED\t{{.CreatedAt}}\nSTATUS\t{{.Status}}\n"
export PATH="$PATH:/opt/nvim-linux64/bin"

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete history)

source $ZSH/oh-my-zsh.sh
# Force UTF-8 and patched font symbols in all environments (including tmux)
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Force Powerline/Unicode symbol for the prompt
PROMPT="${PROMPT/➜ /❯ }"



# Example aliases
alias ls='eza --icons --group-directories-first'
alias ll='eza -lh --icons --group-directories-first'
alias la='eza -lha --icons --group-directories-first'
alias lt='eza --tree --level=2 --icons'

# alias l="lsd -l"
# alias la='lsd -a'
# alias lla='lsd -la'
# alias lt='lsd --tree'
# alias cat="batcat"
# alias ex="exa -l -g --icons"
# alias exa="exa -lga --icons"
alias v="nvim"
alias ga="git add"
alias gc="git commit -m"
alias gac="git commit -am"
alias gs="git status"
alias gl="git log --color --oneline --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export MODULAR_HOME="/home/hamza/.modular"
export PATH="/home/hamza/.modular/pkg/packages.modular.com_mojo/bin:$PATH"

eval "$(zoxide init zsh)"

export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

nvm use default &> /dev/null

eval "$(zoxide init zsh)"
