class LikesController < ApplicationController
before_action :set_photo
  
  def create
    @photo.likes.find_or_create_by!(user: current_user)
    respond_to_turbo
  end
  
  def destroy
    @photo.likes.find_by(user: current_user)&.destroy
    @photo.likes.reload
    respond_to_turbo
  end

  private
  
  def set_photo
    @photo = Photo.includes(:likes).find(params[:photo_id])
  end
  
  def respond_to_turbo
    respond_to do |format|
      format.turbo_stream
    end
  end
end