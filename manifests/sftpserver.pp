class ssh::sftpserver{
	
	group{
		"sftponly":
		ensure => present,
	}
	
	
	file{
		"/etc/shells":
		ensure => present,
		source => "puppet:///modules/ssh/sftp/shells",
	}
}