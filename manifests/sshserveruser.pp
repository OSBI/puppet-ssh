define ssh::sshserveruser ($ensure = "present") {
  realize File["/home/${title}/.ssh"]
  User <| title == $title |> { ensure => $ensure }
  ssh::auth::server { "${title}@analytical-labs.com": ensure => $ensure }
}
