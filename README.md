wifi-sap
========

Create a software access point using standard linux tools and drivers.

Source: https://wiki.archlinux.org/index.php/Software_access_point

Notes:
======

- Your wifi interface must be compatible with the nl80211 generic interface

- Don't forget to stop NetworkManager if you use it

- dhclient / dhcpcd <interface> is sufficient to get an IP address on your primary link