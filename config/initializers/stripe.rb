Rails.configuration.stripe = {
  :publishable_key => 'pk_test_rdCoD1gZnNZR7jNso9DBsRu400n7mzC1fT',
  :secret_key => 'sk_test_azgeASrwLtxL8xw0TsPABN9f00I10zf2P0'
}
Stripe.api_key = Rails.configuration.stripe[:secret_key]