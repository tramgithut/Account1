json.extract! article, :id, :title, :active, :created_at, :updated_at
json.url article_url(article, format: :json)
