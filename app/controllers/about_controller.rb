class AboutController < ApplicationController

  def show
    @descriptions = Description.last
  end

end
