class CreateConsumers < ActiveRecord::Migration[7.0]
  def change
    create_table :consumers do |t|
      t.string :name
      t.string :email_address

      t.timestamps
    end
  end
end
