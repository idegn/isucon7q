# Ansibleで複数台操作

http://docs.ansible.com/ansible/latest/intro_adhoc.html 読むと良い。

# Role

- web: app1361, app1362
- db: app1363


# コマンド

```
ansible web -i ansible/servers -u isucon -a "your command"

ansible web -i ansible/servers -u isucon -s -a "systemctl restart nginx.service"
```

# Copy

http://docs.ansible.com/ansible/latest/intro_adhoc.html#id9

```
ansible web -i ansible/servers -u isucon -s -m copy -a "src=./nginx/sites-available/nginx.conf dest=/etc/nginx/sites-available/nginx.conf mode=644 owner=root group=root"

ansible web -i ansible/servers -u isucon -s -m copy -a "src=./nginx/nginx.conf dest=/etc/nginx/nginx.conf mode=644 owner=root group=root"
```



