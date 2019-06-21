class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(content: params[:content])
    if @post.save
      redirect_to posts_path, success: "登録完了"
    else
      redirect_to root_path, danger: "登録失敗"
    end

  end


end
