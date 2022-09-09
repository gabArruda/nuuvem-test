FactoryBot.define do
  factory :item do
    sequence :description do |n|
      "Item#{n}"
    end
    price { "9.99" }
    merchant
  end
end
