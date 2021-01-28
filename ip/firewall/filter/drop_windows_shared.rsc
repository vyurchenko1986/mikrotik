/ip firewall filter
add action=drop chain=forward comment=\
    "DROP Windows Shared TCP Port: 135,137-139,445,5000" dst-address-list=!RFC1918 \
    log=yes log-prefix=\
    "===> DROP Windows Shared TCP Port: 135,137-139,445,5000 !!! <===" port=\
    135,137-139,445,5000 protocol=tcp src-address-list=RFC1918

add action=drop chain=forward comment=\
    "DROP Windows Shared UDP Port: 135,137-139,445,5000" dst-address-list=!RFC1918 \
    log=yes log-prefix=\
    "===> DROP Windows Shared UDP Port: 135,137-139,445,5000 !!! <===" port=\
    135,137-139,445,5000 protocol=udp src-address-list=RFC1918
