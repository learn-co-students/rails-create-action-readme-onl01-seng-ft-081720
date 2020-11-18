class PostsController < ApplicationController
  # before_action :posts, only: :show
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  # add create method here
  def create
    @post = Post.create(title: params[:title], description: params[:description])
    redirect_to post_path(@post)
  end

  # private
  #   def set_post
  #     @post = Post.find(params[:id])
  #   end
end
