class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.text :description
      t.string :signing
      t.string :month_fee
      t.string :lease_cash
      t.string :price
      t.string :months
      t.string :car_type
      t.string :image

      t.timestamps
    end
  end
end
