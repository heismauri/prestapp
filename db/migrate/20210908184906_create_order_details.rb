class CreateOrderDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :order_details do |t|
      t.string :street
      t.integer :number
      t.string :city
      t.string :card_number
      t.string :card_type

      t.timestamps
    end
  end
end
