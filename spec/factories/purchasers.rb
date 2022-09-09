FactoryBot.define do
  factory :purchaser do
    sequence :name do |n|
      "Name#{n}"
    end
  end
end
