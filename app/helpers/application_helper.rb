module ApplicationHelper
  
  def display_time(time)
    time.strftime("%H:%M")
  end
  
  def current_nav?(path)
    c, p = path.split("#")
    "current" if controller.controller_name == c && controller.action_name == p
  end
  
  def rate(item)
    text = "<span class=\"rate\">"
    text << link_to("[+/-]", "#")
    text << "</span>"
    text.html_safe
  end
  
end
