# The only theme you need!
# Install directly because I found ZSH plugin managers too slow
#
#
export POWERLEVEL9K_MODE='awesome-patched'
export POWERLEVEL9K_PROMPT_ON_NEWLINE=true
export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs status)
export POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(spotifySong todo load)

prompt_spotifySong () {
  state=`osascript -e 'tell application "Spotify" to player state as string'`;
  if [ $state = "playing" ]; then
    artist=`osascript -e 'tell application "Spotify" to artist of current track as string'`;
    track=`osascript -e 'tell application "Spotify" to name of current track as string'`;

    echo -n "$artist - $track ";
  fi
}

powerlevel9k_home=$ZSH_CACHE_HOME/powerlevel9k
if [ ! -d $powerlevel9k_home ] ; then
 git clone https://github.com/bhilburn/powerlevel9k.git $powerlevel9k_home
fi

source  $powerlevel9k_home/powerlevel9k.zsh-theme
