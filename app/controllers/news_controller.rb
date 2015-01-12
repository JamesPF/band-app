class NewsController < ApplicationController

  def index
    @post = Post.all.order([:date]).reverse
  end

end
