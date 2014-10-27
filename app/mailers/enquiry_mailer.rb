class EnquiryMailer < ActionMailer::Base
  default from: "pete@thecoderfactory.com"


  def response(enquiry)
    @enquiry = enquiry
    mail(to: @enquiry.email, subject: 'Your enquiry has been received')
  end


  def received(enquiry)
    @enquiry = enquiry
    mail(to: "pete@thecoderfactory.com", subject: 'An enquiry has been received')
  end
end
