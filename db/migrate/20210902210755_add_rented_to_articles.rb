class AddRentedToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :rented, :boolean, default: false
  end
end
