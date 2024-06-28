class PostsController < ApplicationController
  def index
    def index
      @posts = Post.all
    end
  end

  def new
  end

  def create
  end
end
