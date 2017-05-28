json.extract! payment, :id, :owner_id, :date, :amount, :method, :created_at, :updated_at
json.url payment_url(payment, format: :json)
