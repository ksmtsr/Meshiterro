class PostImagesController < ApplicationController

  def new
    @post_image = PostImage.new # form_with に渡すための「空のモデル」
  end

  def index
  end

  def show
  end
end
