class Country < ActiveRecord::Base
  attr_accessible :sigla, :name
  has_many :states
end
