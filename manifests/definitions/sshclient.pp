define sshclient (){
  realize User[$title]
  realize File["/home/${title}/.ssh"]
  ssh::auth::client { "${title}@analytical-labs.com": }
}
