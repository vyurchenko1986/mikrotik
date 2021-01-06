/ip firewall filter
add action=drop chain=input comment="Drop ssh/winbox brute forcers:" \
    dst-port=22,8291 in-interface-list=WAN log=yes log-prefix=\
    "drop ssh & winbox brute forcers:" protocol=tcp src-address-list=\
    "Black List (SSH/Winbox)"
add action=add-src-to-address-list address-list="Black List (SSH/Winbox)" \
    address-list-timeout=1w3d chain=input connection-state=new dst-port=\
    22,8291 in-interface-list=WAN protocol=tcp src-address-list=\
    ssh_winbox_stage3
add action=add-src-to-address-list address-list=ssh_winbox_stage3 \
    address-list-timeout=1m chain=input connection-state=new dst-port=22,8291 \
    in-interface-list=WAN protocol=tcp src-address-list=ssh_winbox_stage2
add action=add-src-to-address-list address-list=ssh_winbox_stage2 \
    address-list-timeout=1m chain=input connection-state=new dst-port=22,8291 \
    in-interface-list=WAN protocol=tcp src-address-list=ssh_winbox_stage1
add action=add-src-to-address-list address-list=ssh_winbox_stage1 \
    address-list-timeout=1m chain=input connection-state=new dst-port=22,8291 \
    in-interface-list=WAN protocol=tcp
