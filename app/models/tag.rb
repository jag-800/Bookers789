class Tag < ApplicationRecord
  has_many :book_tag, dependent: :destroy, foreign_key: "tag_id"
  has_many :books, through: :post_tags
  
  validates :name, uniqueness: true, presence: true
end
