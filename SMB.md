# Samba for mimir

TODO: Figure out how to automate this?
Copy the shares from `smbshares.conf` into `/etc/samba/smbshares.conf`
Run `sudo systemctl restart smb`

```
# add a samba user (must already exist as a system user)
sudo smbpasswd -a username

# samba with SE linux
sudo semanage fcontext --add --type samba_share_t "/path/to/your/share(/.*)?" # samba access
sudo semanage fcontext --add --type public_content_rw_t "/path/to/your/share(/.*)?" # samba + container access
sudo semanage fcontext --delete "/path/to/your/share(/.*)?" # remove custom settings
sudo restorecon -Rv /path/to/your/share # persist settings on reboot

sudo semanage fcontext -l -C # list custom settings

sudo setsebool -P samba_export_all_rw on # set a boolean
sudo semanage boolean -l | grep samba_export_all_ro # check default value of boolean
sudo semanage boolean --deleteall # delete all customization

# configuration for this server
sudo setsebool -P samba_export_all_rw on # set a boolean
```
