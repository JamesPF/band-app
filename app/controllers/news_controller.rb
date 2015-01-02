class NewsController < ApplicationController

  def index
    @post = Post.all
  end

end
