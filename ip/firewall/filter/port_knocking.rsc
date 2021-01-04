/ip firewall filter
add action=drop chain=input comment="Port Knocking:" connection-state=new \
    dst-port=22,8291 in-interface-list=WAN protocol=tcp src-address-list=\
    !PORTKNOCK_ALLOWED
add action=accept chain=input connection-state=established dst-port=22,8291 \
    in-interface-list=WAN protocol=tcp
add action=add-src-to-address-list address-list=PORTKNOCK_ALLOWED \
    address-list-timeout=15m chain=input connection-state=new dst-port=47 \
    in-interface-list=WAN protocol=udp src-address-list=PORTKNOCK_STAGE_2
add action=add-src-to-address-list address-list=PORTKNOCK_STAGE_2 \
    address-list-timeout=20s chain=input connection-state=new dst-port=879 \
    in-interface-list=WAN protocol=udp src-address-list=PORTKNOCK_STAGE_1
add action=add-src-to-address-list address-list=PORTKNOCK_STAGE_1 \
    address-list-timeout=20s chain=input connection-state=new dst-port=547 \
    in-interface-list=WAN protocol=udp
