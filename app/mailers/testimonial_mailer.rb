class TestimonialMailer < ActionMailer::Base
  default from: "pete@thecoderfactory.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.testimonial_mailer.received.subject
  #
  def received(testimonial)
    @testimonial = testimonial
    mail(to: @testimonial.business_profile.email, subject: 'You have received a testimonial')
  end
end
