module HtmlOptionsArray
  
  def has_html_options_array(method_1, method_2)
    # def self.html_options_array
    #   all.collect do |t|
    #     [t.name, t.id]
    #   end
    # end
    eval <<-EOS
      def self.html_options_array
        all.to_a.collect do |t|
          [t.__send__("#{method_1}".to_sym), t.__send__("#{method_2}".to_sym)]
        end
      end
    EOS
  end
  
end

ActiveRecord::Base.extend HtmlOptionsArray

