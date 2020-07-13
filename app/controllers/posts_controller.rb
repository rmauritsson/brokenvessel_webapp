class PostsController < ApplicationController
  before_action :authenticate_user!, except: [ :index, :show ]
  before_action :set_post, only: [ :show ]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.topic_id = params[:topic_id]

    if @post.save
      redirect_to topic_path(@post.topic_id)
    else
      @topic = Topic.find(params[:topic_id])
      render :new
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
