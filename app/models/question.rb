class Question < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :affilation
  belongs_to :category

  belongs_to :user
  has_many :answers
  has_one_attached :image
  belongs_to :department

  validates :title, presence: true
  validates :category_id, presence: true,numericality: { other_than: 1, message: "blank" }
  validates :content, presence: true
  validates :deadline, presence: true

  def self.search(search)
    if search != ""
      Question.where('content LIKE(?)', "%#{search}%")
    else
      Question.all
      
    end
  end
  
end
