class JoinTableItemsCartsController < ApplicationController
  def create
    if current_user == nil
      flash.alert = "veuillez vous connecter afin d'ajouter des objets a votre panier."
      redirect_to new_user_session_path
    else
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
  end

  def update
  end

  def destroy
    @line_item = JoinTableItemsCart.find(params[:id])
    @line_item.destroy

    redirect_to cart_path(current_user.cart.id)
  end
end