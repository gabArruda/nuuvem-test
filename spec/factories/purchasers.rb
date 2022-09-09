FactoryBot.define do
  factory :purchaser do
    sequence :name do |n|
      "Purchaser#{n}"
    end
  end
end
