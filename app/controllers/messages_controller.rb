class MessagesController < ApplicationController
    before_action :authenticate_user!, only: [:create]
    def create
        @message = Message.new(message_params)
        if @message.save
            flash[:notice] = "メッセージを送信しました"
            redirect_to room_path(@message.room_id)
        else
            flash[:notice] = "メッセージの送信に失敗しました"
            redirect_to room_path(@message.room_id)
        end
    end

    def destroy
        @message = Message.find_by(id: params[:id])
        @message.destroy
        flash[:notice] = "メッセージを削除しました"
        redirect_to room_path(@message.room.id)
    end

    private
    def message_params
        params.require(:message).permit(:message, :room_id).merge(user_id: current_user.id)
    end
end