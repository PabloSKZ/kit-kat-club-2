class JoinTableItemsCartsController < ApplicationController
  def create
    @current_user_cart = current_user.cart.items.ids
    @item = current_user.cart.join_table_items_carts
    if @current_user_cart.include?(params[:format].to_i)
      @current_quantity = @item.find_by(item_id: params[:format]).quantity
      @current_quantity += 1
      @item.find_by(item_id: params[:format]).update(quantity: @current_quantity)
    else
      @jt = JoinTableItemsCart.create(item_id: params[:format], cart_id: current_user.cart.id, quantity: 1)
    end
    redirect_to items_path
  end

  def update
  end

  def destroy
  end
end