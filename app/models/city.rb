class City < ActiveRecord::Base
  attr_accessible :name, :state_id
  has_many :customers
end
