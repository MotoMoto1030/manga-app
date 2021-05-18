# テーブル設計

## users テーブル

  | Column                | type   | Options                   |
  | --------------------- | ------ | ------------------------- |
  | nickname              | string | null: false               |
  | email                 | string | null: false, unique: true |
  | encrypted_password    | string | null: false               |
  | birthday              | date   | null: false               |

### Association
  has_many :comments
  has_many :comics

## comics テーブル

  | Column                | type   | Options                   |
  | --------------------- | ------ | ------------------------- |
  | title                 | string | null: false               |
  | genre                 | string | null: false               |

### Association
  has_many   :comments
  belong_to :user

## comments テーブル

  | Column                | type       | Options                            |
  | --------------------- | ---------- | ---------------------------------- |
  | text                  | string     | null: false                        |
  | user                  | references | null: false, foreign_key: true     |
  | comic                 | references | null: false, foreign_key: true     |

### Association
  belong_to :user
  belong_to :comic




