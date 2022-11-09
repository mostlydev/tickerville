json.extract! tick, :id, :ticker_id, :value, :delta_day, :delta_week, :delta_month, :created_at, :updated_at
json.url tick_url(tick, format: :json)
