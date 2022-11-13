class PostImagesController < ApplicationController

  def new
    @post_image = PostImage.new # form_with に渡すための「空のモデル」
  end

  def create #投稿データの保存
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id
    @post_image.save
    redirect_to post_images_path
  end

  def index
  end

  def show
  end

  def destroy
  end


 private #投稿データのストロングパラメータ

  def post_image_params
    params.require(:post_image).permit(:shop_name,:image,:caption)
  end

end
