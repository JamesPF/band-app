class MusicController < ApplicationController

  def index
    @song = Song.all.reverse
  end

end
