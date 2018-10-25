#Vagrantfile
Vagrant.configure('2') do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network 'forwarded_port', guest: 5000, host: 80
  config.vm.host_name = "azneita"
  config.ssh.insert_key = false
  config.ssh.username = "vagrant"
  config.ssh.password = "vagrant"
## For masterless salt, mounting the salt file root
  config.vm.synced_folder "./salt/", "/srv/salt/"
  config.vm.synced_folder "./pillar/", "/srv/pillar/"

## Using the salt provisioner:
  config.vm.provision :salt do |salt|
    salt.verbose = true
    salt.minion_config = "salt/minion"
    salt.run_highstate = true
	salt.bootstrap_script = "bootstrap-salt.sh"
	salt.bootstrap_options = "-P -F -c /tmp -D"
  end

##Setting the name of VM  
  config.vm.provider :virtualbox do |vb|
    vb.name = "azneita"
  end
end