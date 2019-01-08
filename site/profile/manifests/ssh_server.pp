class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service {'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key {'root@master.puppet.vm':
		ensure 	=> present,
		user	=> 'root',
		type	=> 'ssh-rsa',
		key	=> 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCzn1Hzdul9q6iCbP4pmwkGb9Q0QFUsMGZlLC8EmwpzwKsYAmn6Xwc0hDS8L7akTCA1N61m2/S70zZMpnT21XSX1xZ+XCE3UzegkBybmd8K48tnkq0lQBNeby13qrFSsNbFLVLhxwsdx+Ej4wUvg0BD/FXDjm3Y5fBjrg+ssfQSu3zur8a6ePSUYzjmqCByonY+X0MgkmPUWg24DKGykmvfULLkuG/Kj+RrCCLslG4kmBc49nxBTUoM2BTEZXCzkzGPs2iLj05w6+OB+rkty0A5eqWAQ5mzqSPawjWLJ8qRnkSgPJRAtAagiDpMJ07WQKl6LtAoiwLV6IKaUYFo4/v/',
	}
