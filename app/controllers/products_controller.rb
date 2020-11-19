class ProductsController < ApplicationController

  def index
    @cart_items = session[:cart]
  end

  def add
    item = params[:product]
    cart << item
    redirect_to products_path
  end

  private

  def post_params
    params.require(:product).permit(:item)
  end
end
