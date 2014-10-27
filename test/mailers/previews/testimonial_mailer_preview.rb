# Preview all emails at http://localhost:3000/rails/mailers/testimonial_mailer
class TestimonialMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/testimonial_mailer/received
  def received
    TestimonialMailer.received
  end

end
