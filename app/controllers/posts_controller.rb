class PostsController < ApplicationController
  def index
    @search = Post.ransack(params[:q])
    @posts = @search.result
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
    redirect_to root_path
  end

  def show
    @post = Post.find_by(id: params[:id])
    @comments = @post.comments
    @comment = current_user.comments.new
  end

  private
  def post_params
    params.require(:post).permit(:post_content, :field_content, :count_hour).merge(user_id: current_user.id)
  end
end
