# README

#アプリケーション名
GOOD RECIPES

#アプリケーション概要
・誰でも作成したい料理のレシピを教えてくれる
・自身でレシピを追加できる
・自身で投降したレシピを編集、削除できる
追加予定
・1週間の献立を自動で生成してくれる。
#URL

#テスト用アカウント

#利用方法

#アプリケーションを作成した背景
料理好きであるが料理において一番面倒なことは献立を考えることだと考えたため

#洗い出した要件

#実装した機能についての画像やGIFおよびその説明※

#実装予定の機能

#データベース設計	ER図を添付。
# usersテーブル
| Column             | Type   | Options                 |
| ------------------ | ------ | -----------             |
| nickname           | string | null: false             |
| email              | string | null: false, unique:true|
| encrypted_password | string | null: false             |

# recipesテーブル
| Column             | Type       | Options                       |
| ------             | ------     | -----------                   |
| name               | string     | null: false                   |
| explain            |  text      | null: false                   |
| category_id        | integer    | null: false                   |


#画面遷移図	画面遷移図を添付。

#開発環境	使用した言語・サービスを記載。

#工夫したポイント

#改善点

#制作時間