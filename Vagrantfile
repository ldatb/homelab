# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/bullseye64"
  config.vm.provider "virtualbox"
  config.vm.network "public_network"
  config.vm.provider "virtualbox" do |vb|
    vb.name = "cumulus_vm"
    vb.gui = true
    vb.cpus = 4
    vb.memory = 2048
  end
end
