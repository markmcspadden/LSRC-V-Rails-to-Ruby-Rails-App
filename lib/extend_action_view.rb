class ActionView::OutputBuffer
  def sirify(expression)
    reg_ex = Regexp.new(expression)
    self.gsub(reg_ex, "Sir #{expression}") 
  end
end

class ActionController::Base
  alias_method(:org_render, :render)
  
  def render(*args)
    if args.empty?
      org_render :text => render_to_string.sirify("Mark McSpadden")
    else
      org_render(*args)
    end    
  end
end   