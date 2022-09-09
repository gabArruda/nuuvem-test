class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :description, null: false
      t.decimal :price, null: false, precision: 5, scale: 2
      t.references :merchant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
