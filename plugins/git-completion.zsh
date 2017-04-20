# Install directly because I found ZSH plugin managers too slow
# Loading now takes under 100ms
local plugin_name='git-completion'
local plugin_git='https://github.com/git/git'
local plugin_init="$plugin_name.zsh"

local plugin_home="$ZSH_CACHE_HOME/$plugin_name"

if [ ! -d $plugin_home ] ; then
 git clone --depth 1 $plugin_git $plugin_home
fi

# Cant figure out zsh verions :(
source $plugin_home/contrib/completion/$plugin_name.bash 2>> /dev/null
