class CommentsController < ApplicationController
    def create
        @comment = Comment.new(comment_params)
        @comment.save
        redirect_back(fallback_location: root_path) 
    end

    def destroy
        @comment = Comment.find_by(id: params[:id])
        @comment.destroy
        redirect_back(fallback_location: root_path) 
    end

    private
    def comment_params
        params.require(:comment).permit(:content, :post_id).merge(user_id: current_user.id)
    end
end