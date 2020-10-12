class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
    @post = Post.new
    @fields = Field.all
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to root_path
  end

  private
  def post_params
    params.require(:post).permit(:post_content, :field_content, :count_hour).merge(user_id: current_user.id)
  end
end
