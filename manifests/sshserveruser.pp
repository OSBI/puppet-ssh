define ssh::sshserveruser ($ensure = "present") {
	include ssh::auth
  realize File["/home/${title}/.ssh"]
  User <| title == $title |> { ensure => $ensure }
  ssh::auth::server { "${title}@analytical-labs.com": ensure => $ensure }
}
