/ip firewall filter
add action=drop chain=forward comment=\
    "DROP Windows Shared TCP Port: 137-139,445" dst-address-list=!RFC1918 \
    log=yes log-prefix=\
    "===> DROP Windows Shared TCP Port: 137-139,445 !!! <===" port=\
    137-139,445 protocol=tcp src-address-list=RFC1918

add action=drop chain=forward comment=\
    "DROP Windows Shared UDP Port: 137-139,445" dst-address-list=!RFC1918 \
    log=yes log-prefix=\
    "===> DROP Windows Shared UDP Port: 137-139,445 !!! <===" port=\
    137-139,445 protocol=udp src-address-list=RFC1918
