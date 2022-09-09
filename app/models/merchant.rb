class Merchant < ApplicationRecord
  has_many :items
  validates_associated :items

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
end
