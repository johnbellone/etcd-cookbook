Vagrant.configure('2') do |config|
  config.berkshelf.enabled = true

  config.vm.define :etcd, primary: true do |guest|
    guest.vm.provision :chef_solo do |chef|
      chef.run_list = ['etcd::default']
    end
  end
end
