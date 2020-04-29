class ProfilesController < ApplicationController
    def new
    end
    
    def create
        @profile = Profile.new(profile_params)
        @profile.save
        render plain: params[:profile].inspect
    end
    
    def show
        @profile = Profile.find(params[:id])
    end
    
    private
        def profile_params
            params.require(:profile).permit(:name, :biography, :favorite_game, :casual_or_competitive)
        end
end
