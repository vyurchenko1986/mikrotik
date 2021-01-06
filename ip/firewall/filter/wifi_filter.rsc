/ip firewall filter
add action=drop chain=input comment="Wi-Fi (SSID: mp-guest):" \
    dst-address-list=RFC1918 dst-port=22,53,1723,8291 protocol=tcp \
    src-address=192.168.10.0/24
add action=drop chain=forward dst-address=!192.168.3.10 dst-address-list=\
    RFC1918 src-address=192.168.10.0/24
add action=drop chain=forward dst-address=192.168.10.0/24 src-address=\
    !192.168.3.10 src-address-list=RFC1918
add action=drop chain=input comment="Wi-Fi (SSID: mp-public):" \
    dst-address-list=RFC1918 dst-port=22,53,1723,8291 protocol=tcp \
    src-address=192.168.11.0/24
add action=drop chain=forward dst-address-list=RFC1918 src-address=\
    192.168.11.0/24 src-address-list=!Wi_Fi_ACL_Devices
add action=drop chain=forward dst-address=192.168.11.0/24 dst-address-list=\
    !Wi_Fi_ACL_Devices src-address-list=RFC1918
