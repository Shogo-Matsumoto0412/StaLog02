class ProfileController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def index
    @search = User.ransack(params[:q])
    @users = @search.result.order(created_at: :desc).page(params[:page]).per(10)
    @search2 = User.ransack(params[:q])
    @u = @search2.result.order(created_at: :desc)
  end

  def show
    @posts = Post.all
    @user = User.find_by(id: params[:id])
    @user_posts = @user.posts.all.order(created_at: :desc).page(params[:page]).per(10)
    @currentUserEntry = Entry.where(user_id: current_user.id)
    @userEntry = Entry.where(user_id: @user.id)
    unless @user.id == current_user.id
      @currentUserEntry.each do |cu|
        @userEntry.each do |u|
          if cu.room_id == u.room_id then
            @isRoom = true
            @roomId = cu.room_id
          end
        end
      end
      if @isRoom
      else
        @room = Room.new
        @entry = Entry.new
      end
    end
  end

  def following
    @user = User.find_by(id: params[:id])
    @users = @user.followings.page(params[:page]).per(10)

  end

  def followers
    @user = User.find_by(id: params[:id])
    @users = @user.followers.page(params[:page]).per(10)
  end
end
