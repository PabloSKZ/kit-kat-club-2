class CartsController < ApplicationController
  def show
    @items = current_user.cart.items
  end

  def create
    @cart = Cart.create(user_id: current_user.id)
    redirect_to root_path
  end

  def update
  end

  def destroy
  end
end
