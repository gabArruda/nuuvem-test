FactoryBot.define do
  factory :merchant do
    sequence :name do |n|
      "Merchant#{n}"
    end
    sequence :address do |n|
      "Address#{n}"
    end
  end
end
