class Pack < ApplicationRecord
    has_many :catagories , dependent: :destroy
end
