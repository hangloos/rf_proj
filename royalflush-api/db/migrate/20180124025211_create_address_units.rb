class CreateAddressUnits < ActiveRecord::Migration[5.1]
  def change
    create_table :address_units do |t|
      t.references :address
      t.references :unit, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
