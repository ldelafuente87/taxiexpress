class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.string :origenRuta
      t.string :destinoRuta
      t.float :precio

      t.timestamps null: false
    end
  end
end
