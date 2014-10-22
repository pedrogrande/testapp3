json.array!(@testimonials) do |testimonial|
  json.extract! testimonial, :id, :star_rating, :body, :user_id, :business_profile_id
  json.url testimonial_url(testimonial, format: :json)
end
