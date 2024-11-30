class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         with_options presence: true,
               format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/,
                         message: 'is invalid. Input full-width characters' } do
    validates :first_name
    validates :last_name
  end
  with_options presence: true,
               format: { with: /\A[ァ-ヶー－]+\z/, message: 'is invalid. Input full-width katakana characters' } do
    validates :first_name_kana
    validates :last_name_kana
  end
         PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i
         validates_format_of :password, with: PASSWORD_REGEX, message: 'is invalid. Include both letters and numbers'
         validates :inner_line, presence: true
         validates :employee_num, presence: true
         validates :affilation_id, presence: true, numericality: { other_than: 1 , message: "can't be blank"} 

         extend ActiveHash::Associations::ActiveRecordExtensions
         belongs_to :affilation


         has_many :questions
         has_many :answers

end
