class CreateMerchants < ActiveRecord::Migration[7.0]
  def change
    create_table :merchants do |t|
      t.string :name, null: false, index: { unique: true }
      t.string :address, null: false

      t.timestamps
    end
  end
end
