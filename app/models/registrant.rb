class Registrant < ActiveRecord::Base

  validates :first_name, :last_name, :email, presence: true
  validates :email, :uniqueness => true 
  validates :email, format: {with: /(\S+)@(\S+)/}

  HOW_HEARD = %w(Option1 Option2 Option3)
  validates :how_heard, inclusion: { in: HOW_HEARD, 
    :message => "must be selected" }

end
