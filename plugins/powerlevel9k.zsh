# The only theme you need!
export POWERLEVEL9K_MODE='awesome-patched'
export POWERLEVEL9K_PROMPT_ON_NEWLINE=true
export POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
export POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX='$ '
export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs status)
export POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(custom_spotify_song todo load)

# Custom status for playing Spotify song
export POWERLEVEL9K_CUSTOM_SPOTIFY_SONG="echo \$(prompt_spotify_song)"
export POWERLEVEL9K_CUSTOM_SPOTIFY_SONG_BACKGROUND="blue"
export POWERLEVEL9K_CUSTOM_SPOTIFY_SONG_FOREGROUND="yellow"
prompt_spotify_song () {
  state=`osascript -e 'tell application "Spotify" to player state as string'`;
  if [ $state = "playing" ]; then
    artist=`osascript -e 'tell application "Spotify" to artist of current track as string'`;
    track=`osascript -e 'tell application "Spotify" to name of current track as string'`;

    echo -n "$artist - $track "
  fi
}

# Install directly because I found ZSH plugin managers too slow
# Loading now takes under 100ms
powerlevel9k_home=$ZSH_CACHE_HOME/powerlevel9k
if [ ! -d $powerlevel9k_home ] ; then
 git clone https://github.com/bhilburn/powerlevel9k.git $powerlevel9k_home
fi

source  $powerlevel9k_home/powerlevel9k.zsh-theme
