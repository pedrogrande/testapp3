class ContactController < ApplicationController
	skip_before_action :authentication_user!
  def index
  	@enquiry = Enquiry.new
  end
end
