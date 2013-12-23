class Registrant < ActiveRecord::Base

  validates :first_name, :last_name, :email, presence: true
  validates :email, :uniqueness => true 
  validates :email, format: {with: /(\S+)@(\S+)/}

  HOW_HEARD = ["Your Mom", "India TV", "Google", "My awesome realtors"]
  validates :how_heard, inclusion: { in: HOW_HEARD, 
    :message => "must be selected" }

end
