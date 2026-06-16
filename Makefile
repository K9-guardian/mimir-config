ANSIBLE_PLAYBOOK := /opt/ansible-venv/bin/ansible-playbook
INVENTORY := inventory/local/
_TAGS := $(if $(TAGS),--tags $(TAGS))

.PHONY: install check lint

install:
	$(ANSIBLE_PLAYBOOK) -i $(INVENTORY) mimir.yml $(_TAGS)

check:
	$(ANSIBLE_PLAYBOOK) -i $(INVENTORY) mimir.yml --check --diff $(_TAGS)

lint:
	$(ANSIBLE_PLAYBOOK) -i $(INVENTORY) mimir.yml --syntax-check $(_TAGS)
