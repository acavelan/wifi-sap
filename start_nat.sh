sysctl net.ipv4.ip_forward=1

ip link set up dev wlp3s0
ip addr add 139.96.30.100/24 dev wlp3s0

iptables -t nat -A POSTROUTING -o enp5s0 -j MASQUERADE
iptables -A FORWARD -i wlp3s0 -o enp5s0 -j ACCEPT
iptables -A FORWARD -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT

dhcpd -cf ./dhcpd.conf

hostapd ./hostapd.conf