# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/petelambert/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="lambo"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)
export PATH="/usr/local/opt/mysql@5.6/bin:Users/petelambert/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/petelambert/.rvm/bin"
source $ZSH/oh-my-zsh.sh


export PATH="/usr/local/sbin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


## Aliases
alias lc="cd ~/working/logikcull-devbox/"
alias lcm="cd ~/working/logikcull-marketing"
alias lcd="cd ~/working/logikcull-designsystem/ui-component-library"
alias edithosts="sudo code /private/etc/hosts"
alias lcbe="cd ~/working/logikcull-devbox/dde && docker-compose up mysql backend logikcull-processing-server"
alias lcfe="cd ~/working/logikcull-devbox/frontend && foreman start"
alias ll="ls -lhFG"
alias zshrc="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias jestwatch="yarn run jest --watch"

function d3 {
  # Kills whatever's running on the passed port
  if (($# == 0)) then
    echo usage: d3 port
  else
    sudo kill -9 "$(sudo lsof -t -i:$1)"
  fi
}

eval "$(direnv hook zsh)"
eval "$(rbenv init -)"

export BACKEND_DIR=/Users/petelambert/working/logikcull-devbox/backend
export DDE_BACKEND_STATIC=true
export FRONTEND_DIR=/Users/petelambert/working/logikcull-devbox/frontend
export PATH="/Users/petelambert/working/logikcull-devbox/dde/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export STYLE_STORAGE="blob"
