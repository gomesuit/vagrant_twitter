# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "centos-0604-x64"
  config.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.4.2/centos64-x86_64-20140116.box"
  #config.vm.network :forwarded_port, guest: 80, host: 80
  #config.vm.network :forwarded_port, guest: 8983, host: 8983
  #config.vm.network :forwarded_port, guest: 3000, host: 3000
  #config.vm.network :forwarded_port, guest: 55672, host: 55672
  #config.vm.network :forwarded_port, guest: 15672, host: 15672

  #config.vm.provider :virtualbox do |vb|
  #  vb.customize ["modifyvm", :id, "--memory", "2048"]
  #end

  config.vm.define "twitter-dev" do |host|
    host.vm.hostname = "twitter-dev"
    #host.vm.network "private_network", ip: "192.168.33.10"
    host.vm.network :"public_network", ip: "192.168.1.20"
    #host.vm.network :"public_network"
    host.vm.provision :shell, :path => "provision.sh"
    host.vm.provision :shell, :path => "provision_va.sh", privileged: false
  end
  
end
