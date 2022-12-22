# Set up the prompt
fpath=($fpath "/home/nicklas/.zfunctions")

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 10000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# --------- Node ---------
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# --------- Aliases ---------

# Verbosity and settings that you pretty much just always are going to want.
alias \
        cp="cp -iv" \
        mv="mv -iv" \
        rm="rm -vI" \
        bc="bc -ql" \
        mkd="mkdir -pv" \
        yt="youtube-dl --add-metadata -i" \
        yta="yt -x -f bestaudio/best"

# Colorize commands when possible.
alias \
        ls="ls -hN --color=auto --group-directories-first" \
        grep="grep --color=auto" \
        diff="diff --color=auto" \
        ccat="highlight --out-format=ansi"

# Python 
alias python=python3
alias pip=pip3
alias pi='pip install -r requirements.txt' # pip install
alias pf='pip freeze > requirements.txt' # pip freeze
alias pu='python -m pip install --upgrade pip' # pip upgrade
alias vc='python -m venv venv; va; pu' # venv create; venv activate; pip upgrade
alias va='source venv/bin/activate' # venv activate
alias vd='deactivate' # venv deactivate


# Custom stuff
alias c=clear
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias gitf="git add -A; git commit --amend --no-edit; git push --force-with-lease"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
eval $(thefuck --alias)

# --------- Plugins ---------
source ~/.zplug/init.zsh

# Plugins
zplug "hlissner/zsh-autopair", defer:2
zplug "zsh-users/zsh-autosuggestions", defer:2
zplug "spaceship-prompt/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

# Syntax highlighting (must be loaded last!)
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

# Turn off power status when using spaceship prompt
export SPACESHIP_BATTERY_SHOW=false

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
