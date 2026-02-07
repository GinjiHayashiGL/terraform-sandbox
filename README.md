# Trraform Sandbox

## Project Overview（概要）

Terraformを用いたInfrastructure as Code (IaC) の学習および検証用のサンドボックスリポジトリです。
主に以下の内容を目的としています。
- Terraformの基本操作（Workflow）の習得
- 各種クラウドソース（AWS/GCP等）の構築検証
- モジュール化やステート管理のベストプラクティスの実践

## Prerequisites（前提条件）

このリポジトリを使用するには、以下のツールが必要です。
- **Terraform**: `v1.x.x` 以上推奨
- **AWS CLI**: インストール済みかつ `aws configure` で認証が完了していること
- **VSCode Extensions**: HashiCorp Terraform

## Environment Setup（環境構築）

下記の手順を順に実施し、環境構築を行うこと。

## Directory Structure（構成）

```text
.
├── .gitignore           # Git管理除外設定
└── README.md            # プロジェクト概要
```

## Usage（使い方）

基本的な実行手順は以下の通りです。作業ディレクトリに移動してから実行してください。

1. **初期化**（プロバイダーやモジュールのダウンロード）
   - `terraform init`

2. **実行計画の確認**（差分とエラーのチェック）
   - `terraform plan`

3. **リソースの反映**
   - `terraform apply`

4. **リソースの削除**（課金防止のため学習後は必ず実行）
   - `terraform destroy`

## Notes（注意事項）

- 実行前に必ず `terraform plan` の内容を確認してください。
- 学習目的のため、検証が終わったリソースは速やかに `destroy` してください。

## References（参考資料）

- [Terraform Language Documentation](https://developer.hashicorp.com/terraform/docs/language)
- [Terraform AWS Provider Registry](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)