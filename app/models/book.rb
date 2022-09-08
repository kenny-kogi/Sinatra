class Book < ActiveRecord::Base
    belongs_to :author
    has_one :category, :foreign_key => 'category_id'

    validates :category_id, presence: true
end