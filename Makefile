ANSIBLE_PLAYBOOK := /opt/ansible-venv/bin/ansible-playbook
_TAGS := $(if $(TAGS),--tags $(TAGS))

.PHONY: install check lint

install:
	$(ANSIBLE_PLAYBOOK) mimir.yml $(_TAGS)

check:
	$(ANSIBLE_PLAYBOOK) mimir.yml --check --diff $(_TAGS)

lint:
	$(ANSIBLE_PLAYBOOK) mimir.yml --syntax-check $(_TAGS)
