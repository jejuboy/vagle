Vagrant.configure(2) do |config| 
	config.vm.box = "ubuntu-14.04.1-desktop-amd64"
	config.vm.box_url = "boxes/ubuntu-14.04.1-desktop-amd64.box"
	config.vm.network :bridged, :bridge => 'eth0'
	config.vm.provider :virtualbox do |vb|
      vb.name = "vagle"
	  vb.gui = true
	end
	config.vm.provision "shell", path: "bootstrap.sh"
end
