class people::faizhasim {
  include ohmyzsh
  include dropbox
  include hipchat
  include alfred
  include tmux
  include evernote
  include couchdbx
  include java

  include iterm2::stable
  include iterm2::colors::solarized_dark

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

