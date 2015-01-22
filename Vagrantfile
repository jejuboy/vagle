Vagrant.configure(2) do |config| 
	config.vm.box = "ubuntu-14.04.1-desktop-amd64"
	config.vm.box_url = "boxes/ubuntu-14.04.1-desktop-amd64.box"
	config.vm.provider :virtualbox do |vb|
      vb.name = "vagle"
	  vb.gui = true

      ## Connect video-capture and infrared devices to the guest.
      #vb.customize ["modifyvm", :id, "--usb", "on"]
      #vb.customize ["usbfilter", "add", "0", "--target", :id, "--name", "RedRat", "--vendorid", "0x112a"]
      #vb.customize ["usbfilter", "add", "0", "--target", :id, "--name", "Magewell XI100DUSB-HDMI", "--vendorid", "0x2935"]

	  vb.customize ["modifyvm", :id, "--memory", "4096"]
      vb.customize ["modifyvm", :id, "--cpus", "2"]
      vb.customize ["modifyvm", :id, "--graphicscontroller", "vboxvga"]
      vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
      vb.customize ["modifyvm", :id, "--ioapic", "on"]
      vb.customize ["modifyvm", :id, "--vram", "128"]
      vb.customize ["modifyvm", :id, "--hwvirtex", "on"]
	end
	#config.vm.synced_folder "../../", "/home/vagrant/stb-tester"
	#config.vm.network "forwarded_port", guest: 1935, host: 1935
	config.vm.provision "shell", path: "setup.sh"
end
