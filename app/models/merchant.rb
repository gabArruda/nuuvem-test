class Merchant < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
end
