# Your PBX IP
:local PBXIP "81.171.1.102"

/ip firewall connection { remove [find src-address~$PBXIP] }
:foreach i in=[/ip firewall connection find dst-address~":5060" protocol~"udp"] do={ /ip firewall connection remove $i }
:foreach i in=[/ip firewall connection find dst-address~":5068" protocol~"udp"] do={ /ip firewall connection remove $i }
:log warning "ISP intarface link is down - clear all SIP connections from $PBXIP"
