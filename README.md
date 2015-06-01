# VCCW (vagrant-chef-wordpress)

This is the Comm0 variant on [vccw](http://vccw.cc/).  Modifications have been made for running PHP version 5.3.3 and MySQL version 5.1.73, as well as wordpress customizations.

## Configuration

**Requirements:**

1. [Vagrant](https://www.vagrantup.com/downloads.html) 1.5 or later
1. [git](https://git-scm.com/)
1. [VirtualBox](https://www.virtualbox.org/wiki/Downloads) 4.3 or later

```bash
$ vagrant plugin install vagrant-hostsupdater
$ vagrant box add miya0001/vccw
$ git clone https://github.com/uconn/vccw.git
$ cd vccw
$ vagrant up
```

Customizable settings reside in the `site.yml` file (you can add any plugins that need to be added/activated in this file also, it will grab any not on your local machine and install them automagically, see below if you add cas-maestro to this list).  Any post provision shell scripts can be added to `provision-post.sh`.

You should now be able to see your site at [http://192.168.33.10/](http://192.168.33.10/) or [http://wordpress.local/](http://wordpress.local/).

Wordpress admin username: `admin`

Wordpress admin password: `admin`

## Notes

**Cas-maestro:** The plugin defaults to yourschool.edu for verification, I recommend adding this plugin only in production, but if you need it in development, I recommend adding it manually.  If you allow the provisioner to add and activate this plugin, you will need to add `?wp` to the end of the wp-admin URLs, but I still experienced problems with this method.