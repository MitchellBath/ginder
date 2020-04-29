class CommentsController < ApplicationController
    def create
        @profile = Profile.find(params[:profile_id])
        @comment = @profile.comments.create(comment_params)
        redirect_to profile_path(@profile)
    end
    
    def destroy
        @profile = Profile.find(params[:profile_id])
        @comment = @profile.comments.find(params[:id])
        @comment.destroy
        redirect_to profile_path(@profile)
    end
    
    private
        def comment_params
            params.require(:comment).permit(:commenter, :body)
        end
end
