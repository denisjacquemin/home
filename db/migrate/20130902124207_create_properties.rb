class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :title
      t.string :ref
      t.string :price
      t.string :old_price
      t.text :description
      t.string :address
      t.integer :agence_id

      t.timestamps
    end
  end
end
