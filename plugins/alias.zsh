########## rbenv
eval "$(rbenv init -)"
#echo 2.4.0 > ~/.ruby-version

export CHEF_USER=nelson
export EDITOR=vim
export DEFAULT_USER=nelson

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

if [ -e ~/src ] ; then
  if [ -e ~/src/chef ] ; then
    cd ~/src/chef
  else
    cd ~/src
  fi
fi

# Disable MOTD/last login message
touch ~/.hushlogin

