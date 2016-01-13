# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "debian/jessie64"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--nictype1", "virtio"]
  end

  config.vm.provision "shell", path: "#{File.dirname(__FILE__)}/provision.sh"
end
