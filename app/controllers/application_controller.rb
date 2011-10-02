class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :set_layout
  before_filter :set_iphone_format

  def set_iphone_format
    request.format = :iphone if iphone_request?
  end
  
  def set_layout
    iphone_request? ? "iphone" : "application"
  end
  
  private
  
  def iphone_request?
    request.user_agent =~ /(Mobile.+Safari)/
  end
end
