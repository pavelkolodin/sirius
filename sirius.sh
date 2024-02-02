sudo route del -net 0.0.0.0 gw 10.82.0.1 wlan0
sudo route del -net 0.0.0.0 gw 10.82.0.1 metric 600 wlan0
sudo route add default gw 10.82.0.2
ping 77.88.8.8
