class PhotosController < ApplicationController
  def list
    @photos = Photo.all.order("view_count desc")
  end

  def detail
    @photo = Photo.find params[:id]
  end

  def like
    @photo = Photo.find params[:id]
    @photo.update view_count: (@photo.view_count + 1)
    redirect_to root_path
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new params.require(:photo).permit(:url)
    if @photo.save
      redirect_to photo_path(id: @photo.id)
    else
      render :new
    end
  end
end
