class AttendeesController < ApplicationController
  
  def index
    @attendees = Attendee.all
  end
  
end