class Profile < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    validates :name, presence: true, length: { minimum: 2}
    validates :biography, presence: true
end
