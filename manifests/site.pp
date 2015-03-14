node "mysql-node" {
	$override_options = {
		'mysqld' => {
			'old_passwords' => '0',
		}
	}


	class { '::mysql::server':
		root_password           => 'strongpassword',
		remove_default_accounts => true,
		override_options        => $override_options
	}
	

}


node "puppet-deployment" inherits 'mysql-node'{
	

}