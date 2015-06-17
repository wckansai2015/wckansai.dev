# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "wckansai"

  config.ssh.forward_agent = true


  config.vm.hostname = 'wckansai.dev'
  config.vm.network "private_network", ip: "192.168.88.88"

  if Vagrant.has_plugin?('vagrant-hostsupdater')
    config.hostsupdater.remove_on_suspend = true
  end

  if Vagrant.has_plugin?('vagrant-vbguest')
    config.vbguest.auto_update = false
  end

  config.vm.synced_folder 'www/wordpress', '/var/www/wordpress',
        :create => "false", :mount_options => ['dmode=755', 'fmode=644']
  config.vm.provision :shell, :path => File.join( File.dirname(__FILE__), 'provision-post.sh' )
end
