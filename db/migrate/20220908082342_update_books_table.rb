class UpdateBooksTable < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :publisher, :string
    add_reference :books, :author
  end
end
