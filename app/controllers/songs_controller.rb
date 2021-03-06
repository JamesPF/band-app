class SongsController < ApplicationController

  before_filter :authorize

  def index
    @song = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)

    if @song.save
      redirect_to songs_path
    else
      redirect_to @song, notice: 'There was an error loading a new song.'
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    if @song.update_attributes(params.require(:song).permit(:title, :code))
      redirect_to songs_path
    else
      render 'edit'
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to songs_path
  end

  def song_params
    params.require(:song).permit(:title, :code)
  end

end
