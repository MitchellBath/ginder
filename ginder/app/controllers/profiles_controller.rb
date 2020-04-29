class ProfilesController < ApplicationController
    def new
        @profile = Profile.new
    end
    
    def index
        @profiles = Profile.all
    end
    
    def create
        @profile = Profile.new(profile_params)
        if @profile.save
            redirect_to @profile
        else
            render 'new'
        end
    end
    
    def show
        @profile = Profile.find(params[:id])
    end
    
    private
        def profile_params
            params.require(:profile).permit(:name, :biography, :favorite_game, :casual_or_competitive)
        end
end
