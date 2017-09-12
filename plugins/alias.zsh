# Update brew stuff
alias update-my-casks='brew update ; brew cask list | egrep "^my-" | xargs brew cask reinstall'
alias update-brew='brew update -v && brew upgrade -v && brew cleanup && brew cask cleanup && brew prune'

# Update osx without gui
alias update-osx='softwareupdate --install --all --verbose'

# Delete the cache and it'll pull the latest from Git
alias update-zsh-plugins='rm -rf $ZSH_CACHE_HOME;zsh'
