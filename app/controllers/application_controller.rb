class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :admin
  helper_method :current_order
  helper_method :cart_qty
  helper_method :current_product

  def cart_qty
    item_quantity = current_order.order_items.length
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def admin
    current_user && current_user.admin
  end

  def current_product
    session[:product_id] ? Product.find(session[:product_id]) : Product.new
  end

  def current_order
    session[:order_id] ? Order.find(session[:order_id]) : Order.new
  end

  def authorize
    redirect_to '/sign_in' unless admin
  end
end
