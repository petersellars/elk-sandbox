# Manual Elk Stack
This folder contains the [Vagrantfile](./Vagrantfile) for a Ubuntu 16.04 server that is used to install the ELK stack manually based on the Digital Ocean [How to install ElasticSearch, Logstash and Kibana ELK stack on Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-install-elasticsearch-logstash-and-kibana-elk-stack-on-ubuntu-16-04).

## Additional Manul Tutorials 
* [How to Gather Infrastructure Metrics with Topbeat and ELK on Ubuntu 14.04](https://www.digitalocean.com/community/tutorials/how-to-gather-infrastructure-metrics-with-topbeat-and-elk-on-ubuntu-14-04)
  * [Installing Topbeat](https://www.elastic.co/guide/en/beats/topbeat/current/topbeat-installation.html) - Due to main page being out of date!
  * [Loading the Topbeat Index Template in Elasticsearch](https://www.elastic.co/guide/en/beats/topbeat/current/topbeat-template.html) - Template Details here!

## Useful Information
In order to follow the tutorial you need to be able to use ```scp``` to copy the logstash-forwarder certificate from the elk host to the client VM. To do this you need to copy the private key of the client into the elk host using a command like this...
```
scp -i .vagrant/machines/default/virtualbox/private_key -P 2222 .vagrant/machines/client/virtualbox/private_key ubuntu@127.0.0.1:/tmp
```
Then from inside the elk host to copy the logstash-forwarder certificate use the a command like this...
```
scp -i .ssh/client_private_key /etc/pki/tls/certs/logstash-forwarder.crt ubuntu@192.168.33.11:/tmp
```
