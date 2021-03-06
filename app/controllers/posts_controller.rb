class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
  end

  def new
  end

  def create
    @post = Post.new(post_params)

    @post.save
    redirect_to @post
  end

  private
  def post_params
    params.require(:post).permit(:img_url, :event, :address, :time, :date, :price, :text)
  end
end
