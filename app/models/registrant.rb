class Registrant < ActiveRecord::Base

  validates :first_name, :last_name, :email, :presence => true
  validates :email, :uniqueness => true
  validates :email, format: {with: /(\S+)@(\S+)/}

end
