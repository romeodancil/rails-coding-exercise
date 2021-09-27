class Criteria < ApplicationRecord
    validates :distination, presence: true
    validates :criterias, presence: true
end