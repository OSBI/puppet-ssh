define sshclient (){
  File["/home/${title}"]
  realize File["/home/${title}/.ssh"]
  User <| title == $title |> { ensure => $ensure }
  ssh::auth::client { "${title}@analytical-labs.com": }
}
