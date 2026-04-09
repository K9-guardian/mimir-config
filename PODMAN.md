# Podman for mimir

Usage:
First setup [NVIDIA NVENC for Jellyfin](https://jellyfin.org/docs/general/post-install/transcoding/hardware-acceleration/nvidia/#configure-with-linux-virtualization).

To start up containers, run
```
sudo podman compose up -d
```
in this directory.

To kill containers, run
```
sudo podman compose down
```
in this directory.

Secrets go in `.env` which is not version controlled.

## SELinux

To properly setup bind mounts, you need to label the volume with `z` or `Z`.
- `z` means the bind mount is shared among multiple containers
- `Z` means the bind mount is private to one container

The docs don't mention labeling volumes, but I labeled them just in case.

## slskd

Need to manually comment out `soulseek` and `listen_port` for `gluetun` to auto assign listen port.
