# frozen_string_literal: true

class ImagesController < ApplicationController
  before_action :set_image, except: %i[index new create]

  def index
    @images = Image.all
  end

  def show; end

  def new; end

  def edit; end

  def create; end

  def update; end

  def destroy; end

  private

  def set_image
    @image = Image.find(params[:id])
  end

  def image_params
    params.require(:image).permit(:title, :url)
  end
end
