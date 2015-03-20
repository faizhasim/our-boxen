class people::faizhasim {
  include ohmyzsh
  include dropbox
  include hipchat
  include alfred
  include tmux
  include evernote
  include java
  include chrome
  include firefox
  include keepassx
  include sublime_text
  include spotify
  include skype

  include iterm2::stable
  include iterm2::colors::solarized_dark
  
  class { 'gpgtools': }

  class { 'intellij':
    edition => 'ultimate',
    version => '14.0.3'
  }
  
  sublime_text::package { 'Emmet':
    source => 'sergeche/emmet-sublime'
  }
#  include emacs   # requires emacs module in Puppetfile
#  include sparrow # requires sparrow module in Puppetfile
#
#  $home     = "/Users/${::boxen_user}"
#  $my       = "${home}/my"
#  $dotfiles = "${my}/dotfiles"
#
#  file { $my:
#    ensure  => directory
#  }
#
#  repository { $dotfiles:
#    source  => 'jbarnette/dotfiles',
#    require => File[$my]
#  }
}

