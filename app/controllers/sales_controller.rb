require 'csv'

class SalesController < ApplicationController
  def index
    @purchases = Purchase.all
  end

  def new
  end

  def create
    if params[:file] then
      file = CSV.table(params[:file], headers: true, col_sep: "\t")
      file.each do |line|
        purchaser = Purchaser.find_or_create_by(name: line.dig(:purchaser_name))
        merchant = Merchant.find_or_create_by(name: line.dig(:merchant_name)) do |merc|
          merc.address = line.dig(:merchant_address)
        end
        item = Item.create(merchant: merchant, description: line.dig(:item_description), price: line.dig(:item_price)) 

        purchase = Purchase.new(purchaser: purchaser)
        purchase_item = purchase.purchase_items.new(item: item, count: line.dig(:purchase_count))
        purchase.save!
      end
    end
    redirect_to root_path
  end
  
end
