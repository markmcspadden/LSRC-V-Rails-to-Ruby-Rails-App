class HomeController < ApplicationController
  
  def index
    @schedule_items = ScheduleItem.all
  end
  
  def communications
    
  end
  
end