class FieldsController < ApplicationController
  def index
    @fields = Field.all
    @field = Field.new
  end

  def create
    @field = Field.new(field_params)
    @field.save
    redirect_to fields_path
  end

  def show
    @field = Field.find_by(id: params[:id])
    @post = current_user.posts.find_by(field_content: @field.title)
    @posts = current_user.posts.where(field_content: @field.title).order(created_at: :desc)
  end

  def destroy
    @field = Field.find_by(id: params[:id])
    @field.destroy
    redirect_to fields_path
  end

  private
  def field_params
    params.require(:field).permit(:title).merge(user_id: current_user.id)
  end
end
