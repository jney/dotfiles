test -f ~/.bash/env          && . ~/.bash/env
test -f ~/.aliases/aliases   && . ~/.aliases/aliases
test -f ~/.bash/completions  && . ~/.bash/completions
test -f ~/.bash/config       && . ~/.bash/config
test -s ~/.rvm/scripts/rvm   && . ~/.rvm/scripts/rvm
test -f ~/.tmuxifier/init.sh && . ~/.tmuxifier/init.sh
test -f ~/.private           && . ~/.private

export NVM_DIR="/home/jney/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
