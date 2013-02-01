class State < ActiveRecord::Base
  attr_accessible :sigla, :country_id, :name
  belongs_to :country
  has_many :cities
end
