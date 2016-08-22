# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.provider "virtualbox" do |vb|
    # vb.gui = true
    vb.memory = "1024"
  end
  
  config.vm.provision "shell", path: "bootstrap.sh"
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "setup.yml"
    ansible.ask_sudo_pass = true
    ansible.extra_vars = "@config.json"
  end
end
