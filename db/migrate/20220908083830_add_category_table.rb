class AddCategoryTable < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |b|
      b.string :category_name 	#a text string up to 256 characters long
    end
  end
end
