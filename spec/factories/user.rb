FactoryBot.define do
  factory :user do
    first_name 'John'
    last_name 'Watson'
    city 'London'
    state 'UK'
    gender 'male'
    birthdate '1887-01-06'
    active true
    admin false
    password 'senh@secreta'

    sequence(:email) { |i| "doyle.arthur-#{i}@gmail.com" }
  end

  # Admin Factory
  factory :admin, class: 'User' do
    first_name 'Sherlock'
    last_name 'Holmes'
    city 'London'
    state 'UK'
    gender 'male'
    birthdate '1887-01-06'
    active true
    admin true
    password 'senh@secreta'

    sequence(:email) { |i| "sir-arthur-#{i}@mail.com" }
  end
end