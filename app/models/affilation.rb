class Affilation < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '営業管理部' },
    { id: 3, name: 'リスク管理部' },
    { id: 4, name: '人事部' },
    { id: 5, name: '不動産部' },
    { id: 6, name: '堺営業所' },
    { id: 7, name: '河内営業所' },
    { id: 8, name: '福島営業所' },
    { id: 9, name: '郡山営業所' },
    { id: 10, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :users
  has_many :questions
 end