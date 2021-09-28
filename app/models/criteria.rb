class Criteria < ApplicationRecord
    validates :distination, presence: true
    validates :criteria, presence: true
end
