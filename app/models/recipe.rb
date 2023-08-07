class Recipe < ApplicationRecord
  belongs_to :user
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  validates :title, :text, presence: true
  validates :genre_id, numericality: { other_than: 1 }
end
