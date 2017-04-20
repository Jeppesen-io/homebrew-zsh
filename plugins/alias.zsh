# Update stuff
alias update-brew='brew update -v && brew upgrade -v && brew cleanup && brew cask cleanup && brew prune'
alias update-osx='softwareupdate --install --all --verbose'

# misc
alias n='nvim ~/.local/notes.md'

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
