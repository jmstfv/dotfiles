# change the default zsh prompt
PROMPT="%n@%m %~ %# "

# save up to 100000 lines
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
HISTSIZE=100000
SAVEHIST=50000

setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_all_dups   # always receive unique search results
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt inc_append_history     # add commands to HISTFILE in order of execution
setopt share_history          # share command history data (between terminals)

# set nano as a default editor for CLI
export EDITOR=nano

# opt out of Homebrew’s spyware
export HOMEBREW_NO_ANALYTICS=1

# sir, this is a development environment
export RAILS_ENV=development
export RACK_ENV=development
export NODE_ENV=development

# initialize the zsh completion system
autoload -Uz compinit && compinit

# aliases
source ~/aliases.zsh

# add rbenv to shell so that it loads every time you open a terminal
if which rbenv > /dev/null; then
  eval "$(rbenv init -)"
fi
