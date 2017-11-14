class CreatePlantains < ActiveRecord::Migration
  def change
    create_table :plantains do |t|
      t.string :name
      t.integer :size
      t.boolean :admin
      t.datetime :expiry

      t.timestamps null: false
    end
  end
end
