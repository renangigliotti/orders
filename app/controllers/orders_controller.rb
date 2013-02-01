class OrdersController < ApplicationController
  
  def index
    @orders = Order.where(finished: false)

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def show
    @order = Order.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def new
    @order = Order.new
    @order.budget = true
    @order.discount = 0
    @order.finished = false


    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(params[:order])
    @order.finished = false

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @order = Order.find(params[:id])

    respond_to do |format|
      if @order.update_attributes(params[:order])
        format.html { redirect_to @order, notice: 'order was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    respond_to do |format|
      format.html { redirect_to orders_url }
    end
  end

end
