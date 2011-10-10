define sshuser {
  @user { $title: }
  @file { "/home/${title}/.ssh":
    ensure => "directory",
    mode   => 600,
    owner  => $title,
    group  => "puppet",
  }
  ssh::auth::key { "${title}@analytical-labs.com": }
}
