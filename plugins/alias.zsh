# Update stuff
alias update-my-casks='brew update ; brew cask list | egrep "^my-" | xargs brew cask reinstall'
alias update-brew='brew update -v && brew upgrade -v && brew cleanup && brew cask cleanup && brew prune'
alias update-osx='softwareupdate --install --all --verbose'
