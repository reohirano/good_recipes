class Recipe < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :user
  has_one_attached :image

  validates :category_id, numericality: { other_than: 1 }
  with_options presence: true do
    validates :image
    validates :name
    validates :explain
    validates :category_id
  end
end
