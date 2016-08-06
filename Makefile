test:
	ansible-playbook site.yml -i hosts --diff

dev:
	ansible-playbook development.yml -i hosts --diff

nagios:
	ansible-playbook nagios.yml -i hosts --diff
