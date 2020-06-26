# bundler
alias bi="bundle install"
alias bo="bundle outdated"
alias bu="bundle update"

# cd
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"

# sane(r) defaults
alias cp="cp -p"
alias mkdir="mkdir -p"
alias ll="ls -aFGo"
alias rm="rm -i"

# git
# check for whitespace errors
alias cwe="git diff-tree --check $(git hash-object -t tree /dev/null) HEAD"
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
# list all files tracked by git
alias gls="git ls-tree -r master --name-only"

# nanoc
alias nb="bundle exec nanoc compile --env=devel"
alias ns="bundle exec nanoc live --port 3001"

# misc
alias h="history 1"
alias rg="rg -S"
alias rnd="head -c 200 /dev/urandom | base64 | tr -d '=+/'"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl ."

# rails & friends
alias cpd="git push && bundle exec cap production deploy"
alias rb="bundle exec rubocop"
alias rc="bin/rails console"
alias rn="bin/rails notes"
alias rr="bin/rails restart"
alias rs="bin/rails server &"
alias rt="bin/rails test"
alias rts="bin/rails test:system"
alias sq="bundle exec sidekiq"
