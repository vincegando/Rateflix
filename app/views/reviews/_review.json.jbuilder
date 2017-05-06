json.extract! review, :id, :username, :email, :date, :rating, :comment, :created_at, :updated_at
json.url review_url(review, format: :json)
