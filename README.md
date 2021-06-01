# 漫画保管庫<br>

## 概要<br>
漫画を投稿、視覚的に保存する事が主な目的。

### 詳細な説明<br>
・漫画を投稿することでマイページに投稿してきた漫画が一覧で表示。<br>
・投稿した漫画はTopページより他ユーザーも閲覧可能。<br>
・投稿した漫画から気になるものがあればいいねする事が可能。<br>
・いいねした漫画はマイページに保存される。

#### 方針
現状から少しずつ更新と改善を予定。<br>
またテストコードも随時更新予定。

# テーブル設計

## users テーブル

  | Column                | type   | Options                   |
  | --------------------- | ------ | ------------------------- |
  | nickname              | string | null: false               |
  | email                 | string | null: false, unique: true |
  | encrypted_password    | string | null: false               |
  | birthday              | date   | null: false               |

### Association
  has_many :comments<br>
  has_many :comics

## comics テーブル

  | Column                | type   | Options                   |
  | --------------------- | ------ | ------------------------- |
  | title                 | string | null: false               |
  | genre                 | string | null: false               |

### Association
  has_many   :comments<br>
  belong_to :user

## comments テーブル

  | Column                | type       | Options                            |
  | --------------------- | ---------- | ---------------------------------- |
  | text                  | string     | null: false                        |
  | user                  | references | null: false, foreign_key: true     |
  | comic                 | references | null: false, foreign_key: true     |

### Association
  belong_to :user<br>
  belong_to :comic




