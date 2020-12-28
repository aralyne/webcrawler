class Phrase < ApplicationRecord
    validates :description, presence: true
end
