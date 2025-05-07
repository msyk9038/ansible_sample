Ansibleのroles機能を使ったサンプルです。

WSL で実行する場合は、以下のようにしてください。
xxxxxxxx はWSLにおけるユーザ名を代入します。

hosts.ini
```
[localhost]
localhost ansible_connection=local ansible_python_interpreter=/usr/local/bin/python3
[localhost:vars]
target_user=xxxxxxxx
```

setup_ubuntu.yml
```
- hosts: localhost
  become: true
  roles:
    - role: awscli
    - role: direnv
    - role: fish
    - role: rust_toolchain
    - role: terraform
```

上記2ファイルを設定後、`ansible-playbook -i hosts.ini setup_ubuntu.yml -K` を実行します。
オプションKをつけることで、WSLのsudoに昇格する際の管理者パスワードを入力できるようにします。
