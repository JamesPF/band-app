class DescriptionsController < ApplicationController

  def new
    @description = Description.new
  end

  def create
    @description = Description.new(description_params)

    if @description.save
      redirect_to home_path
    else
      redirect_to @description, notice: 'There was an error creating your bio.'
    end
  end

  def edit
    @description = Description.order("created_at").last
  end

  def update
    @description = Description.find(params[:id])
    if @description.update_attributes(params.require(:description).permit(:header, :body, :check_box))
      redirect_to home_path
    else
      render 'edit'
    end
  end

  def destroy
    @description = Description.find(params[:id])
    @description.destroy
    redirect_to home_path
  end

  def description_params
    params.require(:description).permit(:header, :body, :check_box)
  end

end
