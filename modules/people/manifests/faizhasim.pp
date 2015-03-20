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
  include xpdf
  include tunnelblick

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
  
  osx::recovery_message { 'If this Mac is found, please contact faizhasim@gmail.com': }
  
  include osx::global::disable_key_press_and_hold
  include osx::global::enable_keyboard_control_access
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::global::disable_autocorrect
  include osx::global::tap_to_click
  
  include osx::finder::unhide_library
  include osx::finder::enable_quicklook_text_selection

  include osx::safari::enable_developer_mode

  include osx::no_network_dsstores

  class { 'osx::dock::position':
    position => 'left',
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

