test:
	ansible-playbook site.yml -i hosts  --diff

dev:
	ansible-playbook development.yml -i hosts  --diff
