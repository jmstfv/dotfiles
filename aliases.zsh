# bundler
alias bi="bundle install"
alias bo="bundle outdated"
alias bu="bundle update"

# file system
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias cp="cp -p"
alias mkdir="mkdir -p"
alias ll="ls -aFGo"

# git
alias cwe="git diff-tree --check $(git hash-object -t tree /dev/null) HEAD" # check for whitespace errors
alias ga="git add"
alias gb="git branch"
alias gc="git commit"
alias gco="git checkout"
alias gd="git diff"
alias gl="git log --oneline"
alias gnuke="git clean -df && git reset --hard"
alias gp="git push"
alias gr="git reset"
alias gs="git status"

# middleman
alias ms="bundle exec middleman serve"

# misc
alias h="history 1"
alias rg="rg -S"
alias rnd="head -c 200 /dev/urandom | base64 | tr -d '=+/'"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl ."

# rails & friends
alias cpd="bundle exec cap production deploy"
alias rb="bundle exec rubocop"
alias rc="bin/rails console"
alias rn="bin/rails notes"
alias rr="bin/rails restart"
alias rs="bin/rails server &"
alias rt="bin/rails test"
alias rts="bin/rails test:system"
alias sq="bundle exec sidekiq"
