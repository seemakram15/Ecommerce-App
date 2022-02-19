class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name, null: false, :limit => 20
      t.references :product, foreign_key: true

      t.timestamps null: false
    end
  end
end
