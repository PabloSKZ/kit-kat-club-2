class CartsController < ApplicationController
  include ApplicationHelper

  def show
    @cart_subtotal = cart_total_price
  end

  def create
    @cart = Cart.create(user_id: current_user.id)
    redirect_to root_path
  end

  def update
  end

  def destroy
    @cart = current_user.cart
    @item = Item.find(params[:id])
    @cart.join_table_items_carts.find_by(item_id: @item).delete

    redirect_to cart_path(@cart)
  end

  private

  def cart_total_price
    @cart = Cart.find(current_user.cart.id)
    @price = 0 

    @cart.join_table_items_carts.each do |i|
      @price += i.quantity * Item.find(i.item_id).price
    end
    return @price
  end
  
end
