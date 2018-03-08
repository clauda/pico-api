FactoryBot.define do
  factory :beach do
    name Faker::Name.name
    city 'Natal'
    state 'RN'
    slug 'ponta-negra-natal-rn'
    published true
  end
end