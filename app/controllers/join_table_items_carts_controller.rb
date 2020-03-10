class JoinTableItemsCartsController < ApplicationController
  def create
    @jt = JoinTableItemsCart.create(item_id: params[:id], cart_id: current_user.cart.id, quantity: 1)
    puts "Ok chef"
    puts params[:item_id]
  end

  def create2
    
  end

  def update
  end

  def destroy
  end
end
