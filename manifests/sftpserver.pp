class ssh::sftpserver{
	
	group{
		"sftponly":
		ensure => present,
	}
	
	
	file{
		"/etc/shells":
		ensure => present,
		source => "puppet:///modules/ssh/sftp/shells",
		notify => Service["ssh"],
	}
	
	file{
		"/etc/ssh/sshd_config":
		ensure => present,
		source => "puppet:///modules/ssh/sftp/sshd_config",
		notify => Service["ssh"],
	}
}