## New Update

sudo systemctl stop nessusd
sudo systemctl disable nessusd

sudo pkill nessusd

sudo dpkg -r nessus
sudo dpkg --purge nessus

sudo rm -rf /opt/nessus

sudo find /opt/nessus -type f -exec chattr -i {} \;

sudo rm -rf /opt/nessus

### Download the plugins
```
https://plugins.nessus.org/v2/nessus.php?f=all-2.0.tar.gz&u=56b33ade57c60a01058b1506999a2431&p=1ee9c89d5379a119a56498f2d5dff674
```
### Download the bas script and store the bash script and plugin in same folder
#### For debian
```
https://cyberarsenal.org/zen/nessus_debian_only_not_for_ubuntu_latest.sh
```
####
```
https://cyberarsenal.org/zen/nessus_ubuntu_only_not_for_debian_latest.sh
```

### Also in bash script change the url with the plugin

### Run the script
