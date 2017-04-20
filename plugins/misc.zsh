export CHEF_USER=nelson
export DEFAULT_USER=nelson

# Use neovim/vim
export EDITOR=vim

# Use emacs mode
bindkey -e

# Switch to ~/src or ~/src/chef if you can
if [ -e ~/src ] ; then
  if [ -e ~/src/chef ] ; then
    cd ~/src/chef
  else
    cd ~/src
  fi
fi

# Disable MOTD/last login message
touch ~/.hushlogin
