class CartsController < ApplicationController
  def show
    @items = Cart.last.items
  end

  def create
  end

  def update
  end

  def destroy
  end
end
