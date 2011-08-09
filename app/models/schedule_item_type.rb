class ScheduleItemType < ActiveRecord::Base
  
  has_many :schedule_items
  
  has_html_options_array :name, :id
  
  def to_s
    self.name.to_s
  end

  

end
