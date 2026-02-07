# Trraform Sandbox

## Project Overview（概要）

Terraformを用いたInfrastructure as Code (IaC) の学習および検証用のサンドボックスリポジトリです。
主に以下の内容を目的としています。
- Terraformの基本操作（Workflow）の習得
- モジュール化やステート管理のベストプラクティスの実践

## Prerequisites（前提条件）

このリポジトリを使用するにあたり、下記を前提条件とする。
- **オペレーティングシステム**: Ubuntu / macOS
- **クラウドベンダー**: AWS
- **作業エディタ**: VSCode

## Environment Setup（環境構築）

下記の手順を順に実施し、環境構築を行うこと。

1. IAMユーザの作成
   - AWSの学習用アカウントにIAMユーザを作成する
   - AdministratorAccessの権限(IAMポリシー)を付与しておく
   - IAMユーザ設定からAWSアクセスキーを発行すること
   - .envファイルを作成し、.env.sampleをもとに `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY` に指定する

2. AWS CLIのインストール
   - awsコマンド使用のためインストールを実施 ( [インストール手順](https://docs.aws.amazon.com/ja_jp/cli/latest/userguide/getting-started-install.html) )
   - `aws configure` を使用し、プロファイルにAWSアクセスキーを設定 ( [設定手順](https://dev.classmethod.jp/articles/lim-cli-profile/) )
   - 本環境では下記のようにプロファイル名を設定すること (プロファイル名を別名で指定する場合は `terraform/examples/main.tf` のプロファイル名を変更すること)  

   ```bash
   # プロファイル名を "terraform-user" に指定
   aws configure --profile terraform-user
   ```
   - 下記のコマンドを実施し、認証情報が正常に使用可能かを確認する  

   ```bash
   # defaultのプロファイルによる確認
   aws sts get-caller-identity

   # プロファイル名を指定して確認
   aws sts get-caller-identity --profile <profile_name>
   ```

2. Terraform CLIのインストール
   - [インストール手順](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

3. `terraform init` の実行
   - 実行するファイル (main.tf) が存在するフォルダに移動し、`terraform init` を実行する
   - 保存時の自動フォーマットは初期化後でないと動作しないため注意

## Directory Structure（構成）

```text
terraform-sandbox/
├── .vscode/                  # vscode 基本設定
│   ├── settings.json         # vscode ワークスペース設定
│   └── extensions.json       # vscode 拡張機能設定
├── terraform/                # terraform ソースコード
│   └── examples/             # テスト実行コード
├── .gitignore                # Git管理除外設定
├── LICENSE                   # ライセンスファイル
└── README.md                 # プロジェクト概要
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

- Terraform環境構築
  - [Terraformのインストールから設定まで](https://zenn.dev/mo_ri_regen/articles/terraform-setting)
  - [VS Code で Terraform を使うなら、絶対入れておきたい拡張機能って何がある？](https://www.reddit.com/r/Terraform/comments/yzo5yl/what_are_some_must_have_terraform_extensions_for/?tl=ja)
  - [HashiCorp Terraform VSCode extension](https://github.com/hashicorp/vscode-terraform)
