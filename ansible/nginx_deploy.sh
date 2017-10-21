#!/bin/sh
ansible priority -i ansible/servers -u isucon -s -m copy -a "src=./nginx/sites-enabled/lb.conf dest=/etc/nginx/sites-enabled/lb.conf mode=644 owner=root group=root"
ansible secondary -i ansible/servers -u isucon -s -m copy -a "src=./nginx/sites-enabled/web.conf dest=/etc/nginx/sites-enabled/web.conf mode=644 owner=root group=root"
ansible all -i ansible/servers -u isucon -s -m copy -a "src=./nginx/nginx.conf dest=/etc/nginx/nginx.conf mode=644 owner=root group=root"
ansible all -i ansible/servers -u isucon -s -a "systemctl restart nginx.service"
