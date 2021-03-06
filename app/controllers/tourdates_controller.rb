class TourdatesController < ApplicationController

  before_filter :authorize

  def index
    @tourdate = Tourdate.all.order([:date])
  end

  def show
  @tourdate = Tourdate.find(params[:id])
  end

  def new
    @tourdate = Tourdate.new
  end

  def create
    @tourdate = Tourdate.new(tourdate_params)

    if @tourdate.save
      redirect_to tourdates_path
    else
      redirect_to @tourdate, notice: 'There was an error creating tour dates.'
    end
  end

  def edit
    @tourdate = Tourdate.find(params[:id])
  end

  def update
    @tourdate = Tourdate.find(params[:id])
    if @tourdate.update_attributes(params.require(:tourdate).permit(:date, :city, :venue, :time, :address, :tickets))
      redirect_to tourdates_path
    else
      render 'edit'
    end
  end

  def destroy
    @tourdate = Tourdate.find(params[:id])
    @tourdate.destroy
    redirect_to tourdates_path
  end

  def tourdate_params
    params.require(:tourdate).permit(:date, :city, :venue, :time, :address, :tickets)
  end

end
