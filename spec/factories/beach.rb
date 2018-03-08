FactoryBot.define do
  factory :beach do
    name Faker::Name.name
    city Faker::HitchhikersGuideToTheGalaxy.planet
    state 'RN'
    slug nil
    published true
  end
end