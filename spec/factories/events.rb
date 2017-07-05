FactoryGirl.define do
  factory :event do
    name             "Codaisseur"
    description      { Faker::Lorem.sentence(40) }
    location         { Faker::Address.city }
    capacity         50
    includes_food    true
    includes_drinks  true
    price            { 12.0 }
    user             { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
