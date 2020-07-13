class PagesController < ApplicationController
  def home
    @topics = Topic.all.limit(5)
    @posts = Post.order(id: :desc).limit(20)
  end

  def dashboard
  end
end
