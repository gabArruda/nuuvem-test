require 'rails_helper'

RSpec.describe PurchaseItem, type: :model do
  it "is valid with valid attributes" do
    purchase_item = build(:purchase_item)
    expect(purchase_item).to be_valid
  end

  it "is not valid withouth a purchase" do
    purchase_item = build(:purchase_item, purchase: nil)
    expect(purchase_item).to_not be_valid
  end

  it "is not valid withouth an item" do
    purchase_item = build(:purchase_item, item: nil)
    expect(purchase_item).to_not be_valid
  end

  it "is not valid withouth a count" do
    purchase_item = build(:purchase_item, count: nil)
    expect(purchase_item).to_not be_valid
  end
  it "is not valid with a count lower than or equal 0" do
    purchase_item = build(:purchase_item, count: 0)
    expect(purchase_item).to_not be_valid
    purchase_item = build(:purchase_item, count: -10)
    expect(purchase_item).to_not be_valid
  end

end
