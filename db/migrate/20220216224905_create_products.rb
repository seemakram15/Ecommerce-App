class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false, index: true, :limit => 25
      t.text :description, :limit => 500
      t.string :images
      t.integer :price
      t.integer :quantity
      t.references :user, foreign_key: true


      t.timestamps null: false
    end
  end
end
