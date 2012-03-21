define ssh::sshclient (){
  file{"/home/${title}":
  	ensure => directory
  	}
  realize File["/home/${title}/.ssh"]
  User <| title == $title |> { ensure => $ensure }
  ssh::auth::client { "${title}@analytical-labs.com": }
}
