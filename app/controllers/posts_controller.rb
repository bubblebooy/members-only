class PostsController < ApplicationController
  before_action :authorize, only: [:new, :create]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to(root_url)
    else
      render :new
    end
  end

  def index
    @posts = Post.all
  end

  private

    def authorize
      redirect_to(root_url) if current_user.nil?
    end

    def post_params
      params.require(:post).permit(:title, :body,:user_id)
    end
end
