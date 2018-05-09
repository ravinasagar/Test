class ChargesController < ApplicationController
  def new
end

def create
  # Amount in cents
  @amount = 500

  customer = Stripe::Customer.create(
  )
rdError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end
end
