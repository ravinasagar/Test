class ProductsController < ApplicationController
  
 

  # def express
  #   booking =Booking.find(params[:id])
  #   response = EXPRESS_GATEWAY.setup_purchase(1000,
  #     ip: request.remote_ip,
  #     return_url: url_for(:action => 'complete', :id => booking.id),
  #     cancel_return_url: "http://localhost:3000/bookings",
  #   )
  #   redirect_to EXPRESS_GATEWAY.redirect_url_for(response.token)
  # end



  def complete
    booking = Booking.find(params[:id])
    begin
      purchase = EXPRESS_GATEWAY.purchase(10000,
      :ip => request.remote_ip,
      :payer_id => params[:PayerID],
      :token => params[:token]
      )
      puts(purchase)
    rescue Exception => e

      flash[:error] = e.message
    end

    unless purchase.success?
      flash[:error] = "Unfortunately an error occurred:" + purchase.message
    else
      flash[:notice] = "Thank you for your payment"
    end
    redirect_to root_path
  end

end
