class PagesController < ApplicationController
  def home
    @topics = Topic.all.limit(5)
  end

  def dashboard
  end
end
