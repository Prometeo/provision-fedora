.PHONY: help build up requirements clean lint test help

POST_MESSAGE=................................................................

help:
	@echo 'Provision a fedora workstation'
	@echo ''
	@echo '  Options:'
	@echo '    setup           prepare the workstation to run the playbook'
	@echo '    provision       provision the workstation'
	@echo ''

setup:
	@echo "Updating the system ${POST_MESSAGE}"
	sudo dnf -y update
	@echo "Installing Ansible ${POST_MESSAGE}"
	sudo dnf install -y ansible

provision:
	@echo "Running playbook ${POST_MESSAGE}"
	 ansible-playbook -K provision.yaml -i inventory
