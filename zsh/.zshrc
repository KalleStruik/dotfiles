autoload -Uz compinit promptinit
compinit
promptinit

prompt suse

# Menu driven command completion.
zstyle ':completion:*' menu select
# Make ZSH complete aliases.
setopt COMPLETE_ALIASES
# Allow ZSH to complete in priviliged environments.
zstyle ':completion::complete:*' gain-privileges 1

# VI Mode
bindkey -v

# Function to download a full youtube playlist using youtube-dl.
function playlist-dl {
    echo "Looking up playlist name..."
    pl_line=$(youtube-dl --flat-playlist "$1" | grep "\[youtube:playlist\] playlist")
    pl_name=$(echo ${pl_line:28} | awk -F ':' '{print $1}' | tr '/' ' ')
    echo "Found playlist by name: $pl_name"
    echo "Downloading it into directory: $pl_name"

    mkdir "$pl_name"
    cd "$pl_name"
    youtube-dl --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" "$1"
	cd ../
}

function compile {
	gcc -no-pie -g -o $2 $1
}

# Set EDITOR to be nvim.
export EDITOR=nvim

# Aliases
alias ls="lsd"
alias grep="grep --color"
alias p="sudo pacman"
alias vim="nvim"
alias vi="nvim"

# Add fish like syntax highlighting to zsh.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
