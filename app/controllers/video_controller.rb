class VideoController < ApplicationController

  def index
    @vid = Vid.all.reverse
  end

end
