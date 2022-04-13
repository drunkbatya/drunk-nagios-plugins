# drunk-nagios-plugins
My nagios/icinga plugins for different purposes.
This pack consists of:
1. [check_local_ssl](check_local_ssl) - check all fouded SSL certs on host in paralell mode. 
2. [check_akado](check_akado) - check [akado ISP](https://www.akado.ru/) balance, price, and blockdate.
3. [check_regru_domain](check_regru_domain) - check domain expiration date through [reg.ru's api](https://www.reg.ru/reseller/api2doc).
4. [check_kafka_consumer](check_kafka_consumer) - check a Kafka consumer group using Burrow.
5. [check_kafka_msg_per_sec](check_kafka_msg_per_sec) - check a Kafka messages per second using Kafka Manager
6. [kafka_msg_per_sec_exporter](kafka_msg_per_sec_exporter) - exports Kafka messages per second to Prometheus using Kafka Manager

## check_local_ssl
This script grab cert's paths from actual Nginx, Apache and Httpd configs. Script will print "OK" and exit with 0 status if no certs found or if no webservers running.
Scipt uses [check_ssl_cert](https://github.com/matteocorti/check_ssl_cert) by [matteocorti](https://github.com/matteocorti/) and search it on "/usr/lib/nagios/plugins" by default.
###### Usage:
```bash
sudo ./check_ssl_cert [days before warning] [days before critical]
```
###### Usage example:
```bash
sudo /usr/lib/nagios/plugins/check_ssl_cert # will use default days before warning and critical (warning: 7, critical: 2)
sudo /usr/lib/nagios/plugins/check_ssl_cert 16 4 # first argument overrides default warning days, second - critical
```
