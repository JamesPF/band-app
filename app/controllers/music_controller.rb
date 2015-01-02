class MusicController < ApplicationController

  def index
    @song = Song.all
  end

end
