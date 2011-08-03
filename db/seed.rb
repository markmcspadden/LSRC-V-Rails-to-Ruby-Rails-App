
Attendee.create(:name => "Jack Shepard", :created_at => "Wed Aug 03 04:27:00 UTC 2011", :updated_at => "Wed Aug 03 05:06:38 UTC 2011", :id => "1", :phone => "469-226-9488", :attended => "true", :email => "markmcspadden@gmail.com")
Attendee.create(:name => "Kate", :created_at => "Wed Aug 03 04:27:23 UTC 2011", :updated_at => "Wed Aug 03 04:27:23 UTC 2011", :id => "2", :phone => "469-226-9488", :attended => "false", :email => "markmcspadden+kate@gmail.com")

ScheduleItem.create(:created_at => "Wed Aug 03 04:40:19 UTC 2011", :title => "Intro", :updated_at => "Wed Aug 03 04:40:19 UTC 2011", :end_at => "Thu Aug 11 09:30:00 UTC 2011", :start_at => "Thu Aug 11 09:00:00 UTC 2011", :id => "1")
ScheduleItem.create(:created_at => "Wed Aug 03 04:40:47 UTC 2011", :title => "Views are Ruby too", :updated_at => "Wed Aug 03 04:40:47 UTC 2011", :end_at => "Thu Aug 11 10:15:00 UTC 2011", :start_at => "Thu Aug 11 09:30:00 UTC 2011", :id => "2")
ScheduleItem.create(:created_at => "Wed Aug 03 04:43:09 UTC 2011", :title => "Bio Break", :updated_at => "Wed Aug 03 04:43:09 UTC 2011", :end_at => "Thu Aug 11 10:30:00 UTC 2011", :start_at => "Thu Aug 11 10:15:00 UTC 2011", :id => "3")

