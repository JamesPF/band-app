class NewsController < ApplicationController

  def index
    @post = Post.all.reverse
  end

end
