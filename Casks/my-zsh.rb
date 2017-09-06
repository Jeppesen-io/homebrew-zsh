cask 'my-zsh' do

  version '1.0.3'
  url 'https://github.com/Jeppesen-io/homebrew-zsh/archive/master.zip'
  homepage 'https://github.com/Jeppesen-io/homebrew-zsh'
  sha256 :no_check

  artifact 'homebrew-zsh-master/dot-files/zshrc',   target: "#{ENV['HOME']}/.zshrc"

  depends_on formula: 'zsh'

  preflight do
    `rm -v #{ENV['HOME']}/.zshrc`
  end

  postflight do

    `sudo sh -c echo /usr/local/bin/zsh > /etc/shells`
    `chsh -s /usr/local/bin/zsh`

  end

end
