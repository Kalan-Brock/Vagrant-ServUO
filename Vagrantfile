# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    config.vm.box = "Tresdni/ServUO"
    config.vm.network "private_network", ip: "192.168.33.10"
    config.vm.hostname = "servuo"

    config.vm.synced_folder ".", "/var/shards",
    	:create => true,
    	:id => "shards", 
    	:mount_options => ["dmode=777", "fmode=666"]

    # You need to change the windows path if you installed Ultima Online in a different location.  Leave the /var folder as is.
	config.vm.synced_folder "C:\\Program Files (x86)\\Electronic Arts\\Ultima Online Classic", "/var/uodata",
		:create => true,
		:id => "uodata", 
		:mount_options => ["dmode=777", "fmode=666"]

    config.vm.provision :shell, path: "bootstrap.sh"

    # Optional NFS. Make sure to remove other synced_folder line too
    #config.vm.synced_folder ".", "/var/shards", :nfs => { :mount_options => ["dmode=777","fmode=666"] }

end