# class ActionView::OutputBuffer
#   def sirify(expression)
#     reg_ex = Regexp.new(expression)
#     self.gsub!(reg_ex, "Sir #{expression}").gsub!(/(Sir )+/, 'Sir ') 
#   end
# end

module ActionViewExtensions
  def sirify(expression)
    reg_ex = Regexp.new(expression)
    # self.gsub!(reg_ex, "Sir #{expression}").gsub!(/(Sir )+/, 'Sir ') 
    self.gsub(reg_ex, "Sir #{expression}").gsub(/(Sir )+/, 'Sir ') 
  end
end

class ActionController::Base
  ActionView::OutputBuffer.__send__(:include, ActionViewExtensions)
  
  def render(options = {}, locals = {}, &block)  
    options.merge!({:text => render_to_string.sirify("Mark McSpadden")})
    super options, locals,  &block 
  end
end