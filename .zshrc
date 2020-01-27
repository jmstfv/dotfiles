# change the default zsh prompt
PROMPT="%n@%m %~ %# "

# save up to 100000 lines
HISTFILE="$HOME/.zsh_history"
SAVEHIST="100000"
HISTSIZE="100000"

# set nano as a default editor for CLI
export EDITOR="nano"

# opt out of Homebrew’s analytics
export HOMEBREW_NO_ANALYTICS=1

# initialize the zsh completion system
autoload -Uz compinit && compinit

# aliases
source ~/aliases.zsh

# add rbenv to shell so that it loads every time you open a terminal
if which rbenv > /dev/null; then
  eval "$(rbenv init -)"
fi
