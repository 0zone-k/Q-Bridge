FactoryBot.define do
  factory :user do
    first_name {'太郎'}
    last_name {'山田'}
    first_name_kana {'タロウ'}
    last_name_kana {'ヤマダ'}
    email {Faker::Internet.email}
    password {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    inner_line{ 123456 }
    employee_num{ 987654 }
    affilation_id{ 2 }
  end
end