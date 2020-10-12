class RelationshipsController < ApplicationController
  
    def create
        @user = User.find(params[:follow_id])
        following = current_user.follow(@user)
        if following.save
            flash[:success] = 'ユーザーをフォローしました'
            redirect_to profile_path(@user)
        else
            flash.now[:alert] = 'ユーザーのフォローに失敗しました'
            redirect_to profile_path(@user)
        end
    end
  
    def destroy
        @user = User.find(params[:follow_id])
        following = current_user.unfollow(@user)
        if following.destroy
            flash[:success] = 'ユーザーのフォローを解除しました'
            redirect_to profile_path(@user)
        else
            flash.now[:alert] = 'ユーザーのフォロー解除に失敗しました'
            redirect_to profile_path(@user)
        end
    end
  end