# -*- mode: ruby -*-
# vi: set ft=ruby :
$rootsshkey = <<SCRIPT
sudo mkdir -p /root/.ssh
sudo chmod 700 /root/.ssh
sudo echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDFcaSqCPz7bm1xVdgfZry2YwK4zGlTekdi0zCUxLnXd/aVzbQ8/N1miwL8E0wWljmZNqzxtTTQ0y6d695AmErA6DMsSCY676+QzB5zbZTLK2ag9xGG0h+FOpiZOeG5Kkl6dfnA6bjCBrc5u8CHg5tL0jZ8KRjy5uQp0Ouop045sNRatiWOhC2k3pPptnJe/n2TVCZuT38KC9NwhNngWk7fy3w5MW2590YjphZqO6DDikvkgdcbY5syTrbscsnwJDIa57FdUnAYBX5pyeKHQHBxhdr6UcouQtL8IWNzUihq26/agz2gefxCtRbPKtfwevuiKpTV60ugdG0wXX3OfMi9 rk@U12C" > /root/.ssh/authorized_keys
sudo rm /etc/machine-id
sudo systemd-machine-id-setup
SCRIPT

Vagrant.configure("2") do |config|
 config.vm.define "lin01" do |lin01| 
  lin01.vm.box = "osbase"
  lin01.vm.hostname = "lin01"
  lin01.vm.network "private_network", ip: "192.168.56.15"
  #config.vm.network "public_network"
  lin01.vm.synced_folder ".", "/vagrant" , disabled: true
  lin01.vm.provider "virtualbox" do |vb|
  vb.name = "lin01"
  vb.memory = "2048"
  vb.cpus = "2"
  end
  lin01.vm.provision "shell", inline: $rootsshkey
 end

 config.vm.define "lin02" do |lin02|
  lin02.vm.box = "osbase"
  lin02.vm.hostname = "lin02"
  lin02.vm.network "private_network", ip: "192.168.56.16"
  #config.vm.network "public_network"
  lin02.vm.synced_folder ".", "/vagrant" , disabled: true
  lin02.vm.provider "virtualbox" do |vb|
  vb.name = "lin02"
  vb.memory = "2048"
  vb.cpus = "2"
  end
  lin02.vm.provision "shell", inline: $rootsshkey
 end

 config.vm.define "lin03" do |lin03|
  lin03.vm.box = "osbase"
  lin03.vm.hostname = "lin03"
  lin03.vm.network "private_network", ip: "192.168.56.17"
  #config.vm.network "public_network"
  lin03.vm.synced_folder ".", "/vagrant" , disabled: true
  lin03.vm.provider "virtualbox" do |vb|
  vb.name = "lin03"
  vb.memory = "2048"
  vb.cpus = "2"
  end
  lin03.vm.provision "shell", inline: $rootsshkey
 end

end
