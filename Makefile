DIST = $(shell grep -E '^ID=' /etc/os-release | sed 's/ID=//')

setup:
ifeq ($(DIST), debian)
	+make setup_debian
endif
ifeq ($(DIST), ubuntu)
	+make setup_ubuntu
endif
	

setup_debian:
	@ansible-playbook -i hosts laptop-setup.yml --skip-tags "snap" --ask-become-pass --become-method su
	
setup_ubuntu:
	@ansible-playbook -i hosts laptop-setup.yml --ask-become-pass
