class Pack < ApplicationRecord
    has_many :catagories
    has_many :items
end
