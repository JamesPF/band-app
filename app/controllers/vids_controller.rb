class VidsController < ApplicationController

  def index
    @vid = Vid.all
  end

  def new
    @vid = Vid.new
  end

  def create
    @vid = Vid.new(vid_params)

    if @vid.save
      redirect_to vids_path
    else
      redirect_to @vid, notice: 'There was an error loading a new video.'
    end
  end

  def edit
    @vid = Vid.find(params[:id])
  end

  def update
    @vid = Vid.find(params[:id])
    if @vid.update_attributes(params.require(:vid).permit(:title, :link))
      redirect_to vids_path
    else
      render 'edit'
    end
  end

  def destroy
    @vid = Vid.find(params[:id])
    @vid.destroy
    redirect_to vids_path
  end

  def vid_params
    params.require(:vid).permit(:title, :link)
  end

end
