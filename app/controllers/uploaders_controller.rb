class UploadersController < ApplicationController
  def index
  end

  def new
    @uploader =Uploader.new
  end

  def create
    binding.pry
    @uploader=Uploader.create(uploader_params)
    redirect_to root_path
  end

  def uploader_params
    params.require(:uploader).permit(:avatar)
  end
end
