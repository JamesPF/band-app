class VideoController < ApplicationController

  def index
    @vid = Vid.all
  end

end
