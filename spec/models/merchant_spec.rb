require 'rails_helper'

RSpec.describe Merchant, type: :model do
  it "is valid with valid attributes" do
    merchant = build(:merchant)
    expect(merchant).to be_valid
  end
  it "is not valid without a name" do
    merchant = build(:merchant, name: nil)
    expect(merchant).to_not be_valid
  end
  it "is not valid without an address" do
    merchant = build(:merchant, address: nil)
    expect(merchant).to_not be_valid
  end
end
