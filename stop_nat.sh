sysctl net.ipv4.ip_forward=0

iptables -t nat -A POSTROUTING -o enp5s0 -j MASQUERADE
iptables -D FORWARD -i wlp3s0 -o enp5s0 -j ACCEPT
iptables -D FORWARD -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT

killall hostapd
killall dhcpd