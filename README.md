# VCCW (vagrant-chef-wordpress)

This is the Comm0 variant on [vccw](http://vccw.cc/).  Modifications have been made for running PHP version 5.3.3 and MySQL version 5.1.73, as well as wordpress customizations.

## Configuration

```
vagrant plugin install vagrant-hostsupdater
vagrant box add miya0001/vccw
git clone https://github.com/uconn/vccw.git
cd vccw
vagrant up
```

You should now be able to see your site at [http://192.168.33.10/](http://192.168.33.10/) or [http://wordpress.local/](http://wordpress.local/).