class PhotosController < ApplicationController
  def index
    @photos = Photo.includes(:likes).all
  end
end
