class CartsController < ApplicationController
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
    @cart.items.each do |i|
      price += i.price
    end
    puts price
  end
  
end
