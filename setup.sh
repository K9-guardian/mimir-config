#!/bin/sh
ANSIBLE_VENV="/opt/ansible-venv"
sudo python3 -m venv --system-site-packages "$ANSIBLE_VENV"
sudo "$ANSIBLE_VENV/bin/pip" install ansible==13.6.0
