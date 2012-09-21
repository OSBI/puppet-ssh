define ssh::sshuser ($usergroups="users"){
	include	ssh::auth
  @user { $title: 
          shell   =>      "/bin/bash",
          home    =>      "/home/$title",
          managehome =>   true,
	  groups => "${usergroups}"}
	  
  @file { "/home/${title}/.ssh":
    ensure => "directory",
    mode   => 600,
    owner  => $title,
    group  => "puppet",
  }
  ssh::auth::key { "${title}@analytical-labs.com": }
  realize Group[admin]
  realize User[$title]
  realize File["/home/${title}/.ssh"]
}
