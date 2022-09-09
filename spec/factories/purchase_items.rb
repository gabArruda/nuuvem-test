FactoryBot.define do
  factory :purchase_item do
    purchase
    item
    count { 2 }
  end
end
