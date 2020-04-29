class Profile < ApplicationRecord
    has_many :comments
    validates :name, presence: true, length: { minimum: 2}
    validates :biography, presence: true
end
