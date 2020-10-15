class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:show, :create]
  def index
    @search = Post.ransack(params[:q])
    @posts = @search.result.order(created_at: :desc)
    @search2 = Post.ransack(params[:q])
    @f = @search2.result.order(created_at: :desc)
    @field = Field.find_by(id: params[:id])
  end

  def new
    @post = Post.new
    @fields = current_user.fields.all
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to root_path 
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_back(fallback_location: root_path) 
  end

  def show
    @post = Post.find_by(id: params[:id])
    @comments = @post.comments
    @comment = current_user.comments.new
  end

  private
  def post_params
    params.require(:post).permit(:post_content, :field_content, :count_hour, :start_time).merge(user_id: current_user.id)
  end
end
