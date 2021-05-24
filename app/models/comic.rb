class Comic < ApplicationRecord
  belongs_to       :user
  has_one_attached :image
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  #空の投稿を保存できないようにする
  validates :title, presence: true

  #ジャンルの選択が「--」の時は保存できないようにする
  validates :genre_id, numericality: { other_than: 1 } 
end
