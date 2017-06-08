node 'master.fios-router.home' {
package { 'vsftpd': 
			ensure => installed,
	}
service { 'vsftpd':
		ensure => running,
		require => Package ['vsftpd'],
	}
file { '/var/ftp/pub/sample.html':
		ensure => present,
		content => "Congrats, you have successfully configured Puppet Resources"
     }
}
