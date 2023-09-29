class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
  end

  def create
    @post = Post.new(post_params)
    # binding.irb
    if @post.save
      redirect_to posts_path, notice: "ポストしました！"
    else
      render :new
    end
  end

  def confirm #メモ：確認ページ
    @post = Post.new(post_params)
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
