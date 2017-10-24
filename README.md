# vibrato-vagrant
  This is a VM which is using vagrantfile to boot up and it handles all the configuration process till the web-app (https://github.com/ntwairay/vibrato_pallet_tracker_web_app.git) is ready

## Launch Server

- install vagrant
- install VirtualBox or other VM machine
- run vagrant up
- access to the server to query data by typing http://localhost:8080

## Port forwarding

- 27017:27017 for mongoDB
- 8080:80 for nginx docker conatiner

*Note: I am unable to port forwarding 80:80 from vagrant to the host unless I run the VirtualBox as root*

## How to test

- type http://localhost:8080 in your web browser
