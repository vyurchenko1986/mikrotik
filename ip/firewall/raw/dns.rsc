/ip firewall raw
add action=drop chain=prerouting comment="Drop DNS flood:" dst-port=53 in-interface-list=list-WAN protocol=tcp
add action=drop chain=prerouting dst-port=53 in-interface-list=list-WAN protocol=udp