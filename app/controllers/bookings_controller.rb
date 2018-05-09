class BookingsController < ApplicationController
  def index
    @bookings =Booking.all
  end

  def new
    @booking =Booking.new
  end

  def create
    @booking =Booking.create(booking_params)
    redirect_to root_url
  end

  def booking_params
    params.require(:booking).permit(:name,:city)
  end
end
