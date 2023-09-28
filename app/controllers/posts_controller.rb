class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def show
  end

  def create
  end

  def confirm #メモ：確認ページ
  end

  def update
  end

  def destroy
  end

  private

  def posts_params
    params.require(:posts).permit(:content)
  end

  def set_post
    @post = Post.find(params[:content])
  end
end
