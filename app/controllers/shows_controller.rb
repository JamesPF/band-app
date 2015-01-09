class ShowsController < ApplicationController

  def index
    @tourdate = Tourdate.all.order([:date])
  end

end
