class RegistrantsController < ApplicationController

  def index
    @registrants = Registrant.all
  end

  def new
    @registrant = Registrant.new
  end

  def create
  end

end
