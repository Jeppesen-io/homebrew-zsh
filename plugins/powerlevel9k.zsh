# Basic vars to install the plugin
function () {
  local plugin_name='powerlevel9k'
  local plugin_git='https://github.com/bhilburn/powerlevel9k.git'
  local plugin_init="$plugin_name.zsh-theme"

  # Fire on last cmd failure!
  export POWERLEVEL9K_FAIL_ICON=🔥
  export POWERLEVEL9K_STATUS_VERBOSE=false

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


  local plugin_home="$ZSH_CACHE_HOME/$plugin_name"

  if [ ! -d $plugin_home ] ; then
   git clone --depth 1 $plugin_git $plugin_home
  fi

  source  $plugin_home/$plugin_init
}
