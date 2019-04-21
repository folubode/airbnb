Rails.configuration.stripe = {
  :publishable_key => 'pk_test_Z5MdSyNl2YZJvnIeRvrSEL8x00qXGNoDwq',
  :secret_key => 'sk_test_bKqUv2fjFwKmq7m5QeL3RI3800ybVTH4Ey'
}
Stripe.api_key = Rails.configuration.stripe[:secret_key]