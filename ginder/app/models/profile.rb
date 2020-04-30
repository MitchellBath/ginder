class Profile < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    validates :name, presence: true, length: { minimum: 2}
    validates :biography, presence: true
    
    def self.search(search)
        if search
            @profiles = Profile.find(:all, :conditions => ['name LIKE ?', "%#{params[:search]}%"])
        else
            @profiles = Profile.all
        end
    end
    
end
