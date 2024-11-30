class Question < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :affilation
  belongs_to :category

  belongs_to :user
  has_many :answers
  has_one_attached :image
end
