class RegistrantsController < ApplicationController
  before_filter :set_header, :except => [:new]
  
  def index
    @registrants = Registrant.all
  end

  def new
    @registrant = Registrant.new
    @header = "Alberta Beach Registration"
  end

  def create
  end

  private 
    def set_header
      @header = "Welcome to Alberta Beach"
    end

end
