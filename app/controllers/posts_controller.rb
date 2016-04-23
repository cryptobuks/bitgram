class PostsController < ApplicationController
  def index
    #code
  end

  def new
    @post = Post.new
  end
end
