class CreateStatus < ActiveRecord::Migration
  def change
    create_table :status do |t|
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
