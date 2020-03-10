class CartsController < ApplicationController
  def show
    @items = current_user.cart.items
  end

  def create
  end

  def update
  end

  def destroy
  end
end
