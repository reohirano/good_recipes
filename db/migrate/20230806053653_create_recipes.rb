class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :explain
      t.integer :category_id
      t.timestamps
    end
  end
end
