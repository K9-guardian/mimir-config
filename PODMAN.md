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

## slskd

Need to manually comment out `soulseek` and `listen_port` for `gluetun` to auto assign listen port.
