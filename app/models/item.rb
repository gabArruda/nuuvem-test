class Item < ApplicationRecord
  belongs_to :merchant
  has_many :purchase_items

  validates :description, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than: 0 }
end
