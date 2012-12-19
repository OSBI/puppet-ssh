define ssh::sshclient (){
	include ssh::auth
  file{"/home/${title}":
  	ensure => directory,
  	owner => "${title}",
  	group => "${title}",
  	}
  realize File["/home/${title}/.ssh"]
  User <| title == $title |> { ensure => $ensure }
  ssh::auth::client { "${title}@analytical-labs.com": }
}
