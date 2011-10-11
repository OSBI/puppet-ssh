define sshuser {
  @group { "admin": ensure => present }
  @user { $title: 
          shell   =>      "/bin/bash",
          home    =>      "/home/$title",
          managehome =>   true,
	  groups => "admin"}
  @file { "/home/${title}/.ssh":
    ensure => "directory",
    mode   => 600,
    owner  => $title,
    group  => "puppet",
  }
  ssh::auth::key { "${title}@analytical-labs.com": }
  realize User[$title]
  realize File["/home/${title}/.ssh"]
}
