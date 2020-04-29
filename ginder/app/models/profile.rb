class Profile < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :name, presence: true, length: { minimum: 2}
    validates :biography, presence: true
end
