# change the default zsh prompt
PROMPT="%n@%m %~ %# "

# save up to 100000 lines
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
SAVEHIST=100000
HISTSIZE=100000

setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt inc_append_history     # add commands to HISTFILE in order of execution
setopt share_history          # share command history data

# set nano as a default editor for CLI
export EDITOR=nano

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
