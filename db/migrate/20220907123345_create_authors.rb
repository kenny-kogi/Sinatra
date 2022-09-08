class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |b|
      b.string :name 	#a text string up to 256 characters long
      b.string :city	# a long text string
    end
  end
end
