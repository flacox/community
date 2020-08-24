class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :mueble_equipo
      t.string :name
      t.string :color
      t.string :model
      t.string :serial

      t.timestamps
    end
  end
end
