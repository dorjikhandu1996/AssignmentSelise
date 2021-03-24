json.extract! discount, :id, :product_id, :name, :discount_amount, :discount_percent, :unit, :start, :end, :created_at, :updated_at
json.url discount_url(discount, format: :json)
