require 'rails_helper'

RSpec.describe Purchaser, type: :model do
  it "is valid with valid attributes" do
    purchaser = build(:purchaser)
    expect(purchaser).to be_valid
  end
  it "is not valid without a name" do
    purchaser = build(:purchaser, name: nil)
    expect(purchaser).to_not be_valid
  end
end
