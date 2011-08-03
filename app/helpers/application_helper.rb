module ApplicationHelper
  
  def display_time(time)
    time.strftime("%H:%M")
  end
  
  def current_nav?(path)
    puts controller.controller_name
    
    
    c, p = path.split("#")
    "current" if controller.controller_name == c && controller.action_name == p
  end
  
end
