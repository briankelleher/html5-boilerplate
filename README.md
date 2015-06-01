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

Customizable settings reside in the `site.yml` file.  Any post provision shell scripts can be added to `provision-post.sh`.

You should now be able to see your site at [http://192.168.33.10/](http://192.168.33.10/) or [http://wordpress.local/](http://wordpress.local/).

Wordpress admin username: `admin`

Wordpress admin password: `admin`