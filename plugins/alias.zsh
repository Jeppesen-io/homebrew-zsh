# Update stuff
alias update-my-casks='brew update ; brew cask list | egrep "^my-" | xargs brew cask reinstall'
alias update-brew='brew update -v && brew upgrade -v && brew cleanup && brew cask cleanup && brew prune'
alias update-osx='softwareupdate --install --all --verbose'

# Open my default node in https://github.com/xolox/vim-notes:
alias n='vim note:default'

# Bundle
alias be='bundle exec'

# Vagrant
alias vd='vagrant destroy -f'
alias vu='vagrant up'
alias vp='vagrant provision'
alias vs='vagrant ssh'
alias kb='be rake server:kickberks'

# Vagrant combos!
alias kbvu='kb && vd || true && vu '
alias kbvp='kb && vp'
