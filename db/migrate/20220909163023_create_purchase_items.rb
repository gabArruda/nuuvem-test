class CreatePurchaseItems < ActiveRecord::Migration[7.0]
  def change
    create_table :purchase_items do |t|
      t.references :purchase, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
      t.integer :count, null: false

      t.timestamps
    end
  end
end
