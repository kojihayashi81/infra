# Terraform cloud でインフラ構築と管理のことはじめ

1. Terraform Cloud のアカウント作成
2. organization の作成
3. 新規ワークスペースの作成
4. Version control workflow を選択
5. Github を選択
6. 対象のリポジトリを選択

## ローカル環境設定

1. ローカルに Terraform をインストール
2. CLI で terraform login
3. Token を作成

---

- Environment variable

  state ファイルに値が残らないので機密情報を渡す用途がよい。Cloud 上で定義するのが良さそう

> Terraform Cloud では Run のタイミングで VM が立ち上がり、その VM 上で terraform plan や terraform apply が実行されます。
>
> AWS・Google Cloud・Azure などにリソースをデプロイしたい場合、この VM 上にクラウドプロパイダーの認証情報を設定する必要があります。 (AWS であれば、IAM アクセスキーや IAM ロールなど)

- Terraform variable

tf ファイル上で定義していた場合、Cloud の Terraform variable が優先される。
