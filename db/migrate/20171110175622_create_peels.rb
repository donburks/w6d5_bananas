class CreatePeels < ActiveRecord::Migration
  def change
    create_table :peels do |t|
      t.integer :pieces
      t.references :plantain, foreign_key: true

      t.timestamps null: false
    end
  end
end
