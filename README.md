# Ansible サンプルコード集

このリポジトリには、Ansibleを使用した自動化のためのサンプルコードが含まれています。

## 含まれるサンプル

- 基本的なPlaybook例
- ロール構成のサンプル
- インベントリ設定例
- 変数の使用例

## 使い方

```bash
# インベントリを指定してPlaybookを実行
ansible-playbook -i inventory/hosts playbooks/sample.yml

# 特定のタグのみ実行
ansible-playbook -i inventory/hosts playbooks/sample.yml --tags "setup,configure"
```

## 前提条件

- Ansible 2.9以上
- SSH接続が可能なターゲットホスト
- 適切な権限を持つユーザー

## ディレクトリ構成

```
.
├── inventory/       # インベントリファイル
├── playbooks/       # Playbookファイル
├── roles/           # ロール定義
└── vars/            # 変数ファイル
```

## 参考リソース

- [Ansible 公式ドキュメント](https://docs.ansible.com/)
- [Ansible Galaxy](https://galaxy.ansible.com/)
