class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.string :description
      t.string :file
      t.integer :property_id

      t.timestamps
    end
  end
end
