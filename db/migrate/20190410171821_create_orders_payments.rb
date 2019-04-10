class CreateOrdersPayments < ActiveRecord::Migration[5.2]
  def change
    create_table :orders_payments do |t|
      t.references :order, foreign_key: true
      t.integer :amount_cents

      t.timestamps
    end
  end
end
