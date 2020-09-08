# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "debian/buster64"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--nictype1", "virtio"]
    vb.cpus = 1
  end

  config.vm.provision "shell", path: "#{File.dirname(__FILE__)}/provision.sh"

  config.vm.synced_folder ".", "/vagrant", type: "rsync", rsync__args: ["--verbose", "--archive", "--delete", "-z", "--no-owner", "--no-group"]

end
