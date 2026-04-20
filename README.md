# Configs for mimir

Usage: 
```
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
sudo ln -s /srv/nasusers/mimir-config/config-perms /etc/cron.hourly/config-perms
```
