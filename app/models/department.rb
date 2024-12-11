class Department < ApplicationRecord

  has_many :users
  has_many :questions

  validates :department,presence: true
end
