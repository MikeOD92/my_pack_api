class Catagory < ApplicationRecord
    has_many :items , dependent: :destroy
    belongs_to :pack
end
