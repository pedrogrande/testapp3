class Testimonial < ActiveRecord::Base
  belongs_to :user
  belongs_to :business_profile

  validates :star_rating, :body, presence: true

  def self.reverse_chron_order
  	order(created_at: :desc)
  end
end
