test:
	ansible-playbook site.yml --diff --check

dev:
	ansible-playbook development.yml --diff

docker:
	ansible-playbook docker.yml --diff

nagios:
	ansible-playbook nagios.yml -i --diff

venv:
	virtualenv venv
	venv/bin/pip install -r requirements.txt
