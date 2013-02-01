class Customer < ActiveRecord::Base
  attr_accessible :address, :city_id, :cpfcnpj, :date_birth, :district, :email, :name, :number, :rgie, :zipcode
  belongs_to :city
  has_many :orders
end
