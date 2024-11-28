class Category < ActiveHash::Base
  self.data = [
  { id: 1, name: '---' },
  { id: 2, name: '新契約' },
  { id: 3, name: '保全' },
  { id: 4, name: '収納' },
  { id: 5, name: 'その他' },
]

include ActiveHash::Associations
has_many :users
has_many :questions
end