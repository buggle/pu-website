class Parentship < ActiveRecord::Base
  attr_accessible :kid_id, :parent_id, :expires_at, :starts_at, :fee, :paying_period
  
  belongs_to :kid
  belongs_to :parent
end
