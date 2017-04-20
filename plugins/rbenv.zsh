export_and_mkdir RBENV_ROOT "$XDG_CACHE_HOME/rbenv"

# Setup rbenv ; don't rehas to speed things up by 100ms or more
eval "$(rbenv init - --no-rehash)"
