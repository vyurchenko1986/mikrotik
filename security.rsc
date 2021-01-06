#RouterOS services:
/ip service disable telnet,ftp,www,api,api-ssl
/ip service print

#MAC-Telnet:
/tool mac-server set allowed-interface-list=none
/tool mac-server print

#MAC-Winbox:
/tool mac-server mac-winbox set allowed-interface-list=none
/tool mac-server mac-winbox print

#MAC-Ping:
/tool mac-server ping set enabled=no
/tool mac-server ping print

#Neighbor Discovery:
/ip neighbor discovery-settings set discover-interface-list=none

#Bandwidth server:
/tool bandwidth-server set enabled=no

#DNS cache:
/ip dns set allow-remote-requests=no

#Caching proxy:
/ip proxy set enabled=no

#Socks proxy:
/ip socks set enabled=no

#UPNP service:
/ip upnp set enabled=no

#Dynamic name service or ip cloud:
/ip cloud set ddns-enabled=no update-time=no

#SSH strong crypto:
/ip ssh set strong-crypto=yes

#
/ip firewall service-port
set ftp disabled=yes
set tftp disabled=yes
set irc disabled=yes
set h323 disabled=yes
set sip disabled=yes
set pptp disabled=yes
set udplite disabled=yes
set dccp disabled=yes
set sctp disabled=yes

#
/tool romon set enabled=no
