class ssh::sftpserver{
	
	file{ 
		"/etc/ssh2":
		ensure => directory,
	}
	
	file {
		"/etc/ssh2/sshd_config":
		ensure => present,
		source => "puppet:///modules/ssh/sftp/sshd_config",
		require => File["/etc/ssh2"],
	}
	
	file {
		"/etc/default/ssh2":
		ensure => present,
		source => "puppet:///modules/ssh/sftp/ssh2",
				require => File["/etc/ssh2"],
		
	}
	
	file {
		"/etc/init.d/ssh2":
		ensure => present,
		source => "puppet:///modules/ssh/sftp/ssh2_init",
				require => File["/etc/ssh2"],
		
	}
}