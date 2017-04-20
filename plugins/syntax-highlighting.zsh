# Install directly because I found ZSH plugin managers too slow
# Loading now takes under 100ms
local plugin_name='zsh-syntax-highlighting'
local plugin_home=$ZSH_CACHE_HOME/$plugin_name
if [ ! -d $plugin_home_home ] ; then
 git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $plugin_home
fi

source  $plugin_name/$plugin_name.zsh
