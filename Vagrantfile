Vagrant.configure("2") do |config|

config.vm.box = "ubuntu/xenial64"

config.vm.network "private_network", ip: "192.168.10.100"
              
config.vm.synced_folder ".", "/vagrant"

# config.vm.provision "shell", path: "C:/Users/smhza/Desktop/eng_devops_114/vagrant/new_default", run: "always"

config.vm.provision "shell", path: "C:/Users/smhza/Desktop/eng_devops_114/vagrant./provision.sh", run: "always"


end

