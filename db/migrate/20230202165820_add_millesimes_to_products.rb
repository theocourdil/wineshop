class AddMillesimesToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :year, :string
  end
end
