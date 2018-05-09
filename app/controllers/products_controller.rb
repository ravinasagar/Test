class ProductsController < ApplicationController
  
 

  def express
    binding.pry
    booking =Booking.find(params[:id])
    response = EXPRESS_GATEWAY.setup_purchase(1000,
      ip: request.remote_ip,
      return_url: url_for(:action => 'complete', :id => booking.id),
      cancel_return_url: "http://localhost:3000/bookings",
      currency: "USD",
      allow_guest_checkout: true,
      items: [{name: booking.name, quantity: "1", amount: 1000}]
    )
    binding.pry
    redirect_to EXPRESS_GATEWAY.redirect_url_for(response.token)
  end



  def complete
    binding.pry
    booking = Booking.find(params[:id])
    begin
      purchase = EXPRESS_GATEWAY.purchase(10000,
      :ip => request.remote_ip,
      :payer_id => params[:PayerID],
      :token => params[:token]
      )
      puts(purchase)
    rescue Exception => e
      logger.error "Paypal error while creating payment: #{e.message}"

      flash[:error] = e.message
    end
    binding.pry

    unless purchase.success?
      flash[:error] = "Unfortunately an error occurred:" + purchase.message
    else
      flash[:notice] = "Thank you for your payment"
    end
    redirect_to root_path
  end

end
