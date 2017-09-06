cask 'my-zsh' do

  version '1.1'
  url 'https://github.com/Jeppesen-io/homebrew-zsh/archive/master.zip'
  homepage 'https://github.com/Jeppesen-io/homebrew-zsh'
  sha256 :no_check

  artifact 'homebrew-zsh-master/dot-files/zshrc',   target: "#{ENV['HOME']}/.zshrc"

  depends_on formula: 'zsh'

  preflight do
    `rm -v #{ENV['HOME']}/.zshrc 2> /dev/null`
  end

  postflight do

    # Allow zsh to systems shells
    `if ! grep -q '/usr/local/bin/zsh' '/etc/shells' ; then sudo sh -c 'echo /usr/local/bin/zsh >> /etc/shells' ; fi`

    # Change the shell if it's not set already
    `if [ "$SHELL" != '/usr/local/bin/zsh' ]; then chsh -s /usr/local/bin/zsh ; fi`

  end

end
