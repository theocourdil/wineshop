class Article < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :color
      t.text :description
      t.float :price
    end
  end
end
