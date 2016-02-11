class CreateMobilities < ActiveRecord::Migration
  def change
    create_table :mobilities do |t|
      t.string :descripcion
      t.integer :maxAsiento

      t.timestamps null: false
    end
  end
end
