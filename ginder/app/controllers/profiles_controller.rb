class ProfilesController < ApplicationController
    def new
    end
    
    def create
        render plain: params[:profile].inspect
    end
end
