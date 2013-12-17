class RegistrantsController < ApplicationController

  def index
    @registrants = Registrant.all
  end

end
