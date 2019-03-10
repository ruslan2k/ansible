AP=venv/bin/ansible-playbook
AG=venv/bin/ansible-galaxy

test: venv
	$(AP) site.yml --diff # -l host.pw --check

dev: venv
	$(AP) development.yml --diff # --check

docker:
	$(AP) docker.yml --diff

nagios:
	$(AP) nagios.yml -i --diff

venv:
	-sudo apt install virtualenv
	virtualenv -p python3 venv
	venv/bin/pip install -r requirements.txt
	$(AG) install nickjj.docker

clean:
	rm -rf venv
