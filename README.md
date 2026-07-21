# Mimir Config

Ansible collection for mimir media server configuration.

Usage:
- Run `setup.sh` in to create the ansible virtual environment.
- Create `~/.passfiles/ansible_mimir` with ansible vault password.
- Run `make`.

# Configuration Overview

The configuration has 3 main parts - setup, services, and backups. Each role in
the configuration plays a part in one of these areas.

- setup
  - devsec.hardening.ssh_hardening
  - common
  - tailscale
  - nvidia
- services
  - selinux (arguably part of setup as well, but we'll group it with services)
  - samba
  - podman
- backups
  - borg

# Filesystem Overview

There's 2 storage locations, `/mnt/nas` and `/mnt/scratch`. `/mnt/nas` is an
LVM group with a 14TB HDD main storage and a 1TB SSD cache. `/mnt/scratch/` is
a 2TB SSD.

In general, use `/mnt/nas` for files that are "complete" with correct metadata,
scans, subtitles, etc. `/mnt/scratch` is used by services like slskd, nicotine,
transmission etc. This is for "incomplete" files that you are obtaining, and
will move to `/mnt/nas` later when you have fixed/vetted them.

## `/mnt/nas`

## `/mnt/scratch`

# Services Overview

## SELinux

## Podman

## Samba

# Backups Overview
