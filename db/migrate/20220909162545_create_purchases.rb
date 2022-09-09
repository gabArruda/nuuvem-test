class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.references :purchaser, null: false, foreign_key: true

      t.timestamps
    end
  end
end
