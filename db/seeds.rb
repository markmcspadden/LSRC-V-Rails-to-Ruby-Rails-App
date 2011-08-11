
Attendee.create(:name => "Jack Shepard", :created_at => "2011-08-03 04:27:00 UTC", :updated_at => "2011-08-03 05:06:38 UTC", :id => "1", :phone => "469-226-9488", :attended => "true", :email => "markmcspadden@gmail.com")
Attendee.create(:name => "Kate", :created_at => "2011-08-03 04:27:23 UTC", :updated_at => "2011-08-03 04:27:23 UTC", :id => "2", :phone => "469-226-9488", :attended => "false", :email => "markmcspadden+kate@gmail.com")

ScheduleItem.create(:created_at => "2011-08-03 04:40:19 UTC", :title => "Intro", :updated_at => "2011-08-09 06:09:30 UTC", :end_at => "2011-08-11 09:30:00 UTC", :start_at => "2011-08-11 09:00:00 UTC", :id => "1", :schedule_item_type_id => "2", :schedule_item_level_id => "2")
ScheduleItem.create(:created_at => "2011-08-03 04:40:47 UTC", :title => "Views are Ruby too", :updated_at => "2011-08-09 17:15:07 UTC", :end_at => "2011-08-11 10:15:00 UTC", :start_at => "2011-08-11 09:30:00 UTC", :id => "2", :schedule_item_type_id => "2", :schedule_item_level_id => "2")
ScheduleItem.create(:created_at => "2011-08-03 04:43:09 UTC", :title => "Bio Break", :updated_at => "2011-08-03 04:43:09 UTC", :end_at => "2011-08-11 10:30:00 UTC", :start_at => "2011-08-11 10:15:00 UTC", :id => "3", :schedule_item_type_id => "", :schedule_item_level_id => "")
ScheduleItem.create(:created_at => "2011-08-11 09:27:35 UTC", :title => "Models and Modules Madness", :updated_at => "2011-08-11 09:27:35 UTC", :end_at => "2011-08-11 16:15:00 UTC", :start_at => "2011-08-11 15:30:00 UTC", :id => "5", :schedule_item_type_id => "3", :schedule_item_level_id => "2")
ScheduleItem.create(:created_at => "2011-08-11 09:28:57 UTC", :title => "Sinatra", :updated_at => "2011-08-11 09:28:57 UTC", :end_at => "2011-08-11 17:30:00 UTC", :start_at => "2011-08-11 16:15:00 UTC", :id => "6", :schedule_item_type_id => "4", :schedule_item_level_id => "2")

ScheduleItemType.create(:name => "Admin", :created_at => "2011-08-09 05:00:34 UTC", :updated_at => "2011-08-09 05:00:34 UTC", :id => "1")
ScheduleItemType.create(:name => "Lecture", :created_at => "2011-08-09 05:00:43 UTC", :updated_at => "2011-08-09 05:00:43 UTC", :id => "2")
ScheduleItemType.create(:name => "Example", :created_at => "2011-08-09 05:00:53 UTC", :updated_at => "2011-08-09 05:00:53 UTC", :id => "3")
ScheduleItemType.create(:name => "Code Exercise", :created_at => "2011-08-09 05:01:24 UTC", :updated_at => "2011-08-09 05:01:24 UTC", :id => "4")

ScheduleItemLevel.create(:name => "Easy", :created_at => "2011-08-09 05:08:24 UTC", :updated_at => "2011-08-09 05:08:24 UTC", :id => "1")
ScheduleItemLevel.create(:name => "Medium", :created_at => "2011-08-09 05:08:31 UTC", :updated_at => "2011-08-09 05:08:31 UTC", :id => "2")
ScheduleItemLevel.create(:name => "Hard", :created_at => "2011-08-09 05:08:40 UTC", :updated_at => "2011-08-09 05:08:40 UTC", :id => "3")

