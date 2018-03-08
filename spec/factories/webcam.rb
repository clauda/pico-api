FactoryBot.define do
  factory :webcam do
    name Faker::Name.name
    description 'Lado leste da Praia de Ponta Negra. Neste ponto as ondas chegam até 2 metros.'
    short_name 'Manary Ponta Negra'
    slug 'manary-ponta-negra-natal-rn'
    published true
    latitude -5.869633
    longitude -35.178308
    code 'WOIED123'
    beach
  end
end