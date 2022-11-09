json.extract! ticker, :id, :name, :slug, :url, :description, :units, :created_at, :updated_at
json.url ticker_url(ticker, format: :json)
