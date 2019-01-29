packer build -only=virtualbox definitions\15.0-x86_64.json
vagrant box add --name evosec-openSUSE-Leap-15.0-DVD-x86_64 --force images/openSUSE-15.0-virtualbox-x86_64-1.0.6.box
