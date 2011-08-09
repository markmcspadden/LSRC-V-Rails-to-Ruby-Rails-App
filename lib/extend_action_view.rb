# class ActionView::OutputBuffer
#   def sirify(expression)
#     reg_ex = Regexp.new(expression)
#     self.gsub!(reg_ex, "Sir #{expression}").gsub!(/(Sir )+/, 'Sir ') 
#   end
# end

module ActionViewExtensions
  def sirify(expression)
    reg_ex = Regexp.new(expression)
    self.gsub!(reg_ex, "Sir #{expression}").gsub!(/(Sir )+/, 'Sir ') 
  end
end
ActionView::OutputBuffer.__send__(:include, ActionViewExtensions) if defined?(ActionView::OutputBuffer)

class ActionController::Base
  alias_method(:org_render, :render)
  
  def render(options = {}, locals = {}, &block)  
    puts self.class
    
    if options.empty?
      org_render :text => render_to_string.sirify("Mark McSpadden")
    else
      org_render(options, locals, &block)
    end    
  end
  
  
end   