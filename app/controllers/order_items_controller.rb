class OrderItemsController < ApplicationController

  def create
    @order = current_order
    @item = @order.order_items.new(item_params)
    if @order.save
      respond_to do |format|
        session[:order_id] = @order.id
        format.js
      end
    else
      redirect to products_path
    end
  end

  def update
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.update_attributes(item_params)
    @order.save
  end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @order_items = current_order.order_items
    if @item.destroy
      respond_to do |format|
        format.js
        format.html
      end
    end
    @order.save
  end

  private

  def item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end
