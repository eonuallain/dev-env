Vagrant.configure(2) do |config|

  if Vagrant.has_plugin?("vagrant-proxyconf")
    config.proxy.http     = "http://proxy.dub.sap.corp:8080"
    config.proxy.https    = "http://proxy.dub.sap.corp:8080"
    config.proxy.no_proxy = "localhost,127.0.0.1,.example.com"
  end

  config.vm.box = "box-cutter/ubuntu1404-desktop"
  config.vm.provision :shell, path: "bootstrap.sh"
  config.ssh.forward_agent = true

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    #vb.customize ["modifyvm", :id, "--monitorcount", "2"]
    #vb.memory = "2048"
  end

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "ansible/install-dev.yml"
    ansible.verbose = "vvv"
  end
end
