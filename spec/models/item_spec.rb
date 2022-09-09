require 'rails_helper'

RSpec.describe Item, type: :model do
  it "is valid with valid attributes" do
    item = build(:item)
    expect(item).to be_valid
  end
  it "is not valid without a description" do
    item = build(:item, description: nil)
    expect(item).to_not be_valid
  end
  it "is not valid without a price" do
    item = build(:item, price: nil)
    expect(item).to_not be_valid
  end
  it "is not valid without a merchant" do
    item = build(:item, merchant: nil)
    expect(item).to_not be_valid
  end
end
