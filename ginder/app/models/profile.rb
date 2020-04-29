class Profile < ApplicationRecord
    validates :name, presence: true, length: { minimum: 2}
    validates :biography, presence: true
end
