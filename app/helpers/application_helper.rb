module ApplicationHelper
  def create_cart_and_assign_to_current_user
    if current_user != nil && current_user.cart == nil
        cart = Cart.create(user: current_user)
    end
  end

  def destroy_item
    @jt = JoinTableItemsCart.find(params[:id])
    @jt.destroy

    redirect_to cart_path(current_user.cart.id)
  end
end
