# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive and hyphen insensitive completion.
CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"

# Download Znap, if it's not there yet.
[[ -r ~/Repos/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/Repos/znap
source ~/Repos/znap/znap.zsh  # Start Znap

plugins=(git kubectl kubectx azure docker golang nvm pip sudo terraform zsh-autosuggestions zsh-autocomplete git-auto-fetch zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export GOPATH=$HOME/go
bindkey '^[[1;5C' forward-word     # Ctrl+right arrow
bindkey '^[[1;5D' backward-word    # Ctrl+left arrow
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word



# Alias
alias k='kubectl'

# Set neovim as default editor on kubectl
export KUBE_EDITOR="nvim"

# Enable history on zsh
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

# Autocomplete insensitive-case
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Enable kubectl context in terminal
RPS1='$(kubectx_prompt_info)'
