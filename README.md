# Vagrant ServUO

A private virtual ServUO development environment, with on-the-fly server set up.

### Required Installations
 - [Virtual Box](https://www.virtualbox.org/wiki/Downloads)
 - [Vagrant](https://www.vagrantup.com/)
 - [Ultima Online Classic Client](https://uo.com/client-download/)

# Why Develop in a Virtual Machine?

  - Development dependencies do not need to be installed on your local machine.
  - You can bring up a fresh server to test or code on in minutes.
  - You can test and break things without it affecting your PC.
  - Many, many other reasons.  You should google about Vagrant a bit, it's super cool.


### Setting it Up
 - Clone or download this repository wherever you'd like.
 - If your Ultima Online installation is in a custom location, change it's path in Vagrantfile.
 - cd to the directory of this project (where Vagrantfile is located).
 - Run the command "vagrant up".

The first time you run vagrant up will take the longest, because it has to import the custom VM I created for it.  After the box import, it will auto provision, download a fresh copy of ServUO, compile it, and then give two last instructions to start the ready to go server:
- 'vagrant ssh'
- 'sh /var/shards/servuo/ServUO.sh'

Your shard will then launch.

### Stopping the Server

In the console, click ctrl + c.

### Destroying Your Virtual Machine

When you run 'vagrant destroy', the virtual machine itself will be deleted.  Your servuo folder will remain, as it was synced to the project folder.

### Vagrant Up Notes

If you run 'vagrant up' after you've ran 'vagrant destroy', be sure to move, or delete the servuo folder, so the provisioner can grab you a fresh copy.

### Connecting to Your Shard

After you run 'vagrant up', you can load up Razor or UO Steam and connect to your shard.

 - IP:  192.168.33.10
 - Port: 2593