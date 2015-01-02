class ShowsController < ApplicationController

  def index
    @tourdate = Tourdate.all
  end

end
