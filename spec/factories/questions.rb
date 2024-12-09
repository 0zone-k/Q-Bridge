FactoryBot.define do
  factory :question do
    title             { 'サンプルタイトル' }
    content      { 'サンプル説明' }
    category_id        { 2 }
    affilation_id  { 2 }
    deadline {'2025/06/29'}
    association :user

    after(:build) do |question|
      question.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end