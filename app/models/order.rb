class Order < ActiveRecord::Base
  attr_accessible :budget, :customer_id, :date, :date_forecast, :discount, :finished
  validates :customer_id, :date, :presence => true 
  belongs_to :customer
  has_many :items
  
  #accepts_nested_attributes_for :items
  
  def totalquantity
    iTotal = 0
    self.items.each do |i|
      iTotal = iTotal + i.quantity
    end
    totalquantity = iTotal
  end

  def totalprice
    iTotal = 0;
    self.items.each do |i|
      iTotal = iTotal + (i.price * i.quantity)
    end
    totalitem = iTotal
  end
  
  def totaldiscount
    iTotal = 0;
    self.items.each do |i|
      iTotal = iTotal + (i.price * i.quantity)
    end
    iTotal = (iTotal * (100 - self.discount)) / 100
    totaldesconto = iTotal
  end

end
