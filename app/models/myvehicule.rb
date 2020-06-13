class Myvehicule < ApplicationRecord
    validates :brand, presence: true
    validates :vehicule, presence: true
end
