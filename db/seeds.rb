Order.create! do |o|
  o.payments.build(amount_cents: 100)
  o.payments.build(amount_cents: 200)
end
