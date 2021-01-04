/ip firewall address-list
add address=192.168.0.0/16 comment="Private-Use Networks" list=RFC1918
add address=10.0.0.0/8 comment="Private-Use Networks" list=RFC1918
add address=172.16.0.0/12 comment="Private-Use Networks" list=RFC1918
