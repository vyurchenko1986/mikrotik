/ip firewall nat
add chain=dstnat action=dst-nat to-addresses=192.168.88.5 protocol=tcp dst-address=XXX.XXX.XXX.XXX in-interface-list=WAN dst-port=80 comment="Hairpin NAT for HTTP"
add chain=dstnat action=dst-nat to-addresses=192.168.88.5 protocol=tcp dst-address=XXX.XXX.XXX.XXX in-interface-list=WAN dst-port=443 comment="Hairpin NAT for HTTPS"
add chain=dstnat action=dst-nat to-addresses=192.168.88.5 protocol=tcp src-address=192.168.88.0/24 dst-address=XXX.XXX.XXX.XXX dst-port=80 comment="Hairpin NAT for HTTP"
add chain=dstnat action=dst-nat to-addresses=192.168.88.5 protocol=tcp src-address=192.168.88.0/24 dst-address=XXX.XXX.XXX.XXX dst-port=443 comment="Hairpin NAT for HTTPS"
