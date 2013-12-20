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
    @registrant = Registrant.new(registrant_params)
    @registrant.save
    redirect_to root_path
  end

private 
    def set_header
      @header = "Welcome to Alberta Beach"
    end

    def registrant_params
      params.require(:registrant).
        permit(
          :first_name, 
          :last_name, 
          :email, 
          :phone_number, 
          :receive_email,
          :how_heard,
          :age_group)
    end

end
