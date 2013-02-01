class ItemsController < ApplicationController
  respond_to :js
  before_filter :load_order

  def create
    @item = @order.items.build(params[:item])
    @item.save

    respond_with @item
  end

  def update
    @item = @order.items.find(params[:id])
    @item.update_attributes(params[:item])

    respond_with @item
  end

  def destroy
    @item = @order.items.find(params[:id])
    @item.destroy

    respond_with @item
  end
  
  def load_order
    @order = Order.find(params[:order_id])
  end

end