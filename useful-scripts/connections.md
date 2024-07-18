# Bluetooth

```bash
sudo systemctl start bluetooth.service
blueman-manager # GUI
```


# Wifi

```bash
sudo systemctl stop NetworkManager
sudo systemctl start iwd
iwctl
    device list
    station <device_name> scan
    station <device_name> get-networks
    station <device_name> connect <SSID>
```

