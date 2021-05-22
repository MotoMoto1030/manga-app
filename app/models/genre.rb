class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '学園' },
    { id: 3, name: 'ギャグ' },
    { id: 4, name: 'ファンタジー' },
    { id: 5, name: 'SF' },
    { id: 6, name: 'ホラー' },
    { id: 7, name: '恋愛' },
    { id: 8, name: 'スポーツ' },
    { id: 9, name: '音楽' },
    { id: 10, name: '料理' },
    { id: 11, name: 'ミステリー' },
    { id: 12, name: '医療' },
    { id: 13, name: 'バトル' },
    { id: 14, name: '歴史' },
    { id: 15, name: 'エッセイ' },
    { id: 16, name: 'レポート' }
  ]

  include ActiveHash::Associations
  has_many :comics

  end