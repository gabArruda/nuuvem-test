class Item < ApplicationRecord
  belongs_to :merchant

  validates :description, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than: 0 }
end
