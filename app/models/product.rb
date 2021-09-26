class Product < ApplicationRecord
    validates :name, presence: true
    validates :reference, presence: true
    validates :category, presence: true
    validates :price, presence: true
end