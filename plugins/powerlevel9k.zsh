# The only theme you need!
# Install directly because I found ZSH plugin managers too slow
export POWERLEVEL9K_MODE='awesome-patched'
export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
export POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time)

powerlevel9k_home=$ZSH_CACHE_HOME/powerlevel9k
if [ ! -d $powerlevel9k_home ] ; then
 git clone https://github.com/bhilburn/powerlevel9k.git $powerlevel9k_home
fi

source  $powerlevel9k_home/powerlevel9k.zsh-theme
