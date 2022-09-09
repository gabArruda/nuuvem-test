class Purchase < ApplicationRecord
  belongs_to :purchaser
  has_many :purchases
  has_many :items, through: :purchase_items
end
