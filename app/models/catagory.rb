class Catagory < ApplicationRecord
    has_many :items
    belongs_to :pack
end
