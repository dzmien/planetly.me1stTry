Planetly.me
===========

planetly.me runs on nginx, uwsgi and python flask. The main directory is:
/srv/http/planetly.me

http group should have rwx to that dir. There is a virtual environment, the files of which are in venv/

run.py <- wsgi entry point for the Flask app
venv/bin/uwsgi --ini config/uwsgi.ini <- command to start the uwsgi server. It creates a socket in /tmp/uwsgi.sock
and chmods it to 666 so that nginx can read/write it. I spent all day trying to get the fucking socket to work. 
