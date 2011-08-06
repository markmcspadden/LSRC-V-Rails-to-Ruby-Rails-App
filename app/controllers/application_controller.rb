require "#{Rails.root}/lib/extend_action_view"

class ApplicationController < ActionController::Base
  protect_from_forgery                
end
