# В чём смысл
После соединения с точкой доступа GammaSirius клиент DHCP для сетевого интерфейса пойдёт спрашивать IP/машрруты/ДНС-ы. Ему скажут, что default gw - это 10.82.0.1, через который интернет работает секунд 20 с паузами по минуте.

tcpdump показывает, что DHCP-ответы в сети приходят от 10.82.0.2, если воткнуть который в качестве default gw, интернет работает долго и стабильно.

# Ну и чо делать?
После коннекта к GammaSirius запустить sirius.sh и всё. Если он не работает, то посмотрите откуда идут DHCP ответы и попробуйте его.

# А чо за check-internet.sh
Это первая версия решателя проблем. Если не пинганулось 8.8.8.8 - переподнять интерфейс. Это тупо, но помогало.
