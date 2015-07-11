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
  include sublime_text
  include spotify
  include skype
  include xpdf
  include tunnelblick
  include imagemagick
  include slate
  include vlc
  include wget
  include cord

  include iterm2::stable
  include iterm2::colors::solarized_dark
  
  class { 'gpgtools': }

  class { 'ruby::global':
      version => "2.1.2",
  }

  ruby_gem { 'bundler':
    gem          => 'bundler',
    version      => '~> 1.0',
    ruby_version => '*',
  }

  ruby_gem { 'tugboat':
    gem          => 'tugboat',
    version      => '~> 0.2',
    ruby_version => '*',
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

  vcsrepo { "/Users/faizhasim/dev/github/categorize-inbox-to-fs":
    ensure => present,
    provider => git,
    source => "git@github.com:faizhasim/categorize-inbox-to-fs.git",
    user => 'faizhasim',
  }

}

