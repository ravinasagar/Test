Rails.configuration.stripe = {
  :publishable_key => 'pk_test_xZsz07lS7Jd3wwmPO1KQ3Rgz',
  :secret_key      => 'sk_test_MzNeKnnmFzO49n6wGtUA4FdR'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]