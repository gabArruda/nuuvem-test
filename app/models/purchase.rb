class Purchase < ApplicationRecord
  belongs_to :purchaser
  has_many :purchase_items
  has_many :items, through: :purchase_items

  def total
    total = 0
    self.purchase_items.each do |purchase_item|
      total += purchase_item.count * purchase_item.item.price
    end
    total
  end
end
