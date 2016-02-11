class CreatePaymentmethods < ActiveRecord::Migration
  def change
    create_table :paymentmethods do |t|
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
