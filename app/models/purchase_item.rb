class PurchaseItem < ApplicationRecord
  belongs_to :purchase
  belongs_to :item

  validates :count, presence: true, numericality: { greater_than: 0 }
end
