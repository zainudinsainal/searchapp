class CreateBlocks < ActiveRecord::Migration[5.1]
  def change
    create_table :blocks do |t|
      t.references :agency, foreign_key: true
      t.integer :postal_code

      t.timestamps
    end
  end
end
