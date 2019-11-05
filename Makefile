laptop_install_debian:
	@ansible-playbook -i hosts laptop-setup.yml --ask-become-pass --become-method su
	
laptop_install_ubuntu:
	@ansible-playbook -i hosts laptop-setup.yml --ask-become-pass
