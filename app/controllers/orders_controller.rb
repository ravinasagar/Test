class OrdersController < ApplicationController
  def index
  end
  def express
  response = EXPRESS_GATEWAY.setup_purchase(current_cart.build_order.price_in_cents,
    :ip                => request.remote_ip,
    :return_url        => new_order_url,
    :cancel_return_url => products_url
  )
  redirect_to EXPRESS_GATEWAY.redirect_url_for(response.token)
  end

  # def new
  #   #binding.pry
  # @order = Order.new(:express_token => params[:token])
  # end

  def create
  end
end
