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

  def confirm #メモ：確認ページ
    @post = Post.new(post_params)
  end

  def create
    @post = Post.new(post_params)

    if params[:back] || !@post.save
      render :new
    else
      redirect_to posts_path, notice: "ポストしました！"
    end

  end

  def update
    if @post.update(post_params)
      redirect_to posts_path, notice: "編集が完了しました！"
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, notice: "投稿を削除しました！"
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
