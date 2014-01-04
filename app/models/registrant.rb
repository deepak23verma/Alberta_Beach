class Registrant < ActiveRecord::Base

  validates :first_name, :last_name, :age_group, presence: true
  validates :email, presence: true, uniqueness: true, format: {with: /(\S+)@(\S+)/}

  HOW_HEARD = ["Your Mom", "India TV", "Google", "My awesome realtors"]
  validates :how_heard, inclusion: { in: HOW_HEARD, 
    :message => "must be selected" }

end
