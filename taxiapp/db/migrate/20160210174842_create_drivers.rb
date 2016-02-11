class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :email
      t.string :name
      t.string :phone
      t.string :nroIdentidad
      t.string :nroPlaca
      t.string :colorAuto
      t.string :marcaAuto
      t.string :modeloAuto
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
