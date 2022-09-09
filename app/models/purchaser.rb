class Purchaser < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
