class CreateProductLocations < ActiveRecord::Migration
  def change
    create_table :product_locations do |t|
      t.references :product
      t.string :location
      t.datetime :available_from
      t.datetime :available_to
      t.datetime :best_from
      t.datetime :best_to

      t.timestamps
    end
    add_index :product_locations, :product_id
  end
end
