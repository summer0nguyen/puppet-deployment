Vagrant.configure("2") do |config|

  config.vm.define "puppet_deployment" do |puppet_deployment|
    puppet_deployment.vm.box = "centos-6"
    puppet_deployment.vm.hostname = "puppet-deployment"

    puppet_deployment.vm.provider "virtualbox" do |vm|
        vm.customize [
            'modifyvm', :id,
            '--memory', '1024',
            '--cpus', '2',
        ]
    end



    puppet_deployment.vm.synced_folder ".", "/vagrant", owner: "root", group: "root" , :mount_options => ['dmode=777,fmode=777']

  end


  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = 'manifests'
    puppet.manifest_file = 'site.pp'
    puppet.module_path = 'modules'
  end






end
