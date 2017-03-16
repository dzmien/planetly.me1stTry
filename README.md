Planetly.me
===========

This repo contains all of the specific components for the planetly.me website. The components are:

1. nginx server config
2. uwsgi vassal
3. Python Flask wsgi Instance

/etc/nginx/nginx.conf and /etc/uwsgi/emperor.ini must be configured beforehand to include site confs
in /etc/nginx/sites-enabled and vassal ini's in /etc/uwsgi/vassals, respectively.

config/
    |
    -- *nginx.conf* - nginx config of the upstream context defining the unix socket to use for communication 
    |   between uwsgi and nginx, as well as the server context which defines how to route requests to planetly.me/\* 
    |   on port 80.
    |   + symlink: /etc/nginx/sites-enabled/planetly.conf
    |
    -- *planetly.ini* - The uwsgi 'vassal' telling uwsgi to route requests to the Python Flask wsgi instance
    |   + symlink: /etc/uwsgi/vassals/planetly.ini
    |
    -- *emperor.uwsgi.service* - Systemd unit for starting the uwsgi emperor
        + symlink: /etc/systemd/system/emperor.uwsgi.service


