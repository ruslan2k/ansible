test: venv
	venv/bin/ansible-playbook site.yml --diff

dev:
	ansible-playbook development.yml -i hosts --diff

docker:
	ansible-playbook docker.yml --diff

nagios:
	ansible-playbook nagios.yml -i hosts --diff

venv:
	virtualenv venv
	venv/bin/pip install -r requirements.txt
