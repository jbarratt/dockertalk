# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.network "forwarded_port", guest: 8080, host: 8080

  #config.vm.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  config.vm.provision "ansible" do |ansible|
      ansible.playbook = "docker.yml"
      ansible.verbose = "v"
      ansible.sudo = true
  end
end
