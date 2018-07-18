class PostsController < ApplicationController
  protect_from_forgery :except => [:create]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
    render json: @posts
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    if @post.save
      render json: @post, status: :created
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:message)
    end
end
