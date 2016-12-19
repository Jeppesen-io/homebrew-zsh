class MyZsh < Formula
  desc 'Install Jeppesens zsh'
  url 'https://github.com/Jeppesen-io/homebrew-zsh/archive/master.zip'
  homepage 'https://github.com/Jeppesen-io/homebrew-zsh'
  version '1.4.3'

  bottle :unneeded

  depends_on 'git'
  depends_on 'zsh'
  depends_on 'zplug'

  def install

    # Get home dir (stripped by homebrew)
    home_dir = `sudo -Hu $USER bash -c 'echo -n $HOME'`

    system 'cp', '-v',  "./dot-files/zshrc",  "#{prefix}/zshrc"
    system 'ln', '-fs', "#{prefix}/zshrc",  "#{home_dir}/.zshrc"

    `chsh -s /bin/zsh`

  end

end
