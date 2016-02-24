# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.define "app" do |app|
    app.vm.box = "bento/centos-6.7"

    #app.vm.provision "shell", inline: <<-SHELL
    #  #sudo apt-get update
    #  #sudo apt-get install -y apache2
    #  echo Ok
    #SHELL

    app.vm.provision "ansible" do |ansible|
      ansible.playbook = "app.yml"
    end

  end

end
