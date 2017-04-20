# Install directly because I found ZSH plugin managers too slow
# Loading now takes under 100ms
function () {
  local plugin_name='zsh-syntax-highlighting'
  local plugin_git='https://github.com/zsh-users/zsh-syntax-highlighting.git'
  local plugin_init="$plugin_name.zsh"

  local plugin_home="$ZSH_CACHE_HOME/$plugin_name"

  if [ ! -d $plugin_home ] ; then
   git clone --depth 1 $plugin_git $plugin_home
  fi

  source  $plugin_home/$plugin_init
}
