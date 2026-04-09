# Configs for mimir

Usage: 
First import keys from backup.
```
sudo dnf install git git-crypt -y
git-crypt unlock

./install

# add a system user
sudo useradd [ -M -s /sbin/nologin ] username

# nasusers group
sudo groupadd nasusers
sudo usermod -aG nasusers username

# add crontab for backups
crontab k9_crontab

# add symlink for nas-perms in /etc/cron.hourly
sudo ln -s /srv/nasusers/mimir-config/nas-perms /etc/cron.hourly/nas-perms
```
