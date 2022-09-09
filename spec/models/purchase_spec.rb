require 'rails_helper'

RSpec.describe Purchase, type: :model do
  it "is valid with valid attributes" do
    purchase = build(:purchase)
    expect(purchase).to be_valid
  end
  it "is not valid without a purchaser" do
    purchase = build(:purchase, purchaser: nil)
    expect(purchase).to_not be_valid
  end
end
