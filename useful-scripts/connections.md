# Setting up wifi during installation:
# https://wiki.archlinux.org/title/Iwd


# Wifi

Do not use Network Manager and IWD together.
Use one of them only


## NetworkManager
More feature-rich than IWD I guess. nmtui is a terminal gui for network manager
```bash

sudo systemctl start NetworkManager
nmtui
nmtui connect
```





## IWD
basic network configurator. could NOT be used alongside networkmanager
```bash

sudo systemctl start NetworkManager
nmcli --ask device wifi connect <ssid>
sudo systemctl start iwd
iwctl
    device list
    station <device_name> scan
    station <device_name> get-networks
    station <device_name> connect <SSID>
```

if you want to connect to a 8021x security network do the next 3 steps.
Add ssid setting in /var/lib/iwd/<ssid.security>
# change /etc/iwd/main.conf
# iconv -t utf16le | openssl md4 -provider legacy # hash your password

touch /var/lib/iwd/<ssid>.<security>
iwctl
device list
station <station_name> scan
station <station_name> get-networks
station <station_name> connect <ssid>
exit


# Bluetooth

```bash
sudo systemctl start bluetooth.service
blueman-manager # GUI
```


