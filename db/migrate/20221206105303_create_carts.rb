class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.integer :consumer_id
      t.integer :product_id

      t.timestamps
    end
  end
end
