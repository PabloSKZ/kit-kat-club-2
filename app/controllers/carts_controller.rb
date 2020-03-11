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
