class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo_id = Photo.find(params[:id]).id
    @photo_source = Photo.find(params[:id]).source
    @photo_caption = Photo.find(params[:id]).caption
    @photo_created_at = Photo.find(params[:id]).created_at
    @photo_updated_at = Photo.find(params[:id]).updated_at
  end

  def create_row
    object = Photo.new(:source => params[:the_source], :caption => params[:the_caption])
    object.save
  end

  def destroy
    Photo.find(params[:id]).destroy
  end

  def edit_form
    @photo_id = Photo.find(params[:id]).id
    @photo_source = Photo.find(params[:id]).source
    @photo_caption = Photo.find(params[:id]).caption
  end

  def update_row
    object = Photo.find(params[:id])
    object.update_attributes(:source => params[:the_source])
    object.update_attributes(:caption => params[:the_caption])
    # Photo.find(params[:id])update_attributes(:source => params[:the_source], :caption => params[:the_caption])
  end
end
