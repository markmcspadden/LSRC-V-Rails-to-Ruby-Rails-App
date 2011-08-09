class ScheduleItemLevel < ActiveRecord::Base

  has_many :schedule_items
  
  has_html_options_array :upcase_name, :id
  
  def to_s
    self.name.to_s
  end
  
  def upcase_name
    self.name.upcase
  end

end
