# Ansibleで複数台操作

http://docs.ansible.com/ansible/latest/intro_adhoc.html 読むと良い。

# Role

- web: app1361, app1362
- db: app1363


# コマンド

```
ansible web -i ansible/servers -u isucon -a "your command"
```

# Copy

http://docs.ansible.com/ansible/latest/intro_adhoc.html#id9

```
ansible web -i ansible/servers -u isucon --become root -m file -a "dest=/srv/foo/b.txt mode=600 owner=mdehaan group=mdehaan"
```



