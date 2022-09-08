class AddCategoryReferenceToBook < ActiveRecord::Migration[6.1]
  def change
    add_reference :books, :category
  end
end
