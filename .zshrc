# Add the directory scripts on the path
export PATH="$PATH:/opt/scripts" 

source ~/.config/zsh/export-var

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.config/oh-my-zsh"
HISTFILE="~/.config/zsh-history"
SAVEFILE=10000
HISTSIZE=10000
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="bira-krystal" 

plugins=(git history-substring-search)

source $ZSH/oh-my-zsh.sh

# ----- COMPLETION ---- 
autoload -U compinit && compinit -d
setopt SHARE_HISTORY
setopt appendhistory
HISTFILE=~/.config/zsh/zsh-history
setopt HIST_IGNORE_ALL_DUPS

# autocompletion using arrow keys (based on history)
bindkey '\e[A' history-search-up
bindkey '\e[B' history-search-down
zstyle ':completion:' matcher-list 'm:{a-zA-Z}={A-Za-z}'       # Case insensitive tab completion 
zstyle ':completion:' list-colors "${(s.:.)LS_COLORS}"         # Colored completion (different col

# Speed up completions 
zstyle ':completion:' accept-exact '(N)' 
zstyle ':completion:' use-cache on 


source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# source ~/.config/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
# ----- ALIAS ---- 
source ~/.config/zsh/zsh-alias

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8


# Compilation flags
# export ARCHFLAGS="-arch x86_64"

