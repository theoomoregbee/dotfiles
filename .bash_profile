export PATH="$HOME/mongodb/bin:/usr/local/mysql/bin:$PATH"
export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK_ROOT=$ANDROID_HOME
export ANDROID_AVD_HOME=$ANDROID_HOME/.android/avd
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/build-tools/28.0.3
export PATH=$PATH:$HOME/ngrok
export PATH=$PATH:/$HOME/Library/Python/2.7/bin

# source secured bash profile, i.e profile with secure content
source ~/.bash_profile_secure

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ----------------------
# Git Aliases
# https://jonsuh.com/blog/git-command-line-shortcuts/
# ----------------------
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add --all'
alias gau='git add --update'
alias gb='git branch'
alias gbd='git branch --delete '
alias gbda='git branch --merged | egrep -v "(^\*|master|develop|staging)" | xargs git branch -d'
alias gc='git commit'
alias gcm='git commit --message'
alias gcf='git commit --fixup'
alias gcam='git commit -am '
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcomaster='git checkout master'
alias gcos='git checkout staging'
alias gcod='git checkout develop'
alias gcom='git checkout main'
alias gd='git diff'
alias gda='git diff HEAD'
alias gi='git init'
alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gm='git merge --no-ff'
alias gp='git pull'
alias gpr='git pull --rebase'
alias gpush='git push'
alias gr='git rebase'
alias grc='git rebase --continue'
alias gra='git rebase --abort'
alias gs='git status'
alias gss='git status --short'
alias gst='git stash'
alias gsta='git stash apply'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash save'

# ----------------------
# Git Functions
# ----------------------
# Git log find by commit message
function glf() { git log --all --grep="$1"; }
