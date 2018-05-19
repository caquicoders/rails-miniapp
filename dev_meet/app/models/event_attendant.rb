class EventAttendant < ApplicationRecord
  belongs_to :event
  belongs_to :attendant, class_name: 'User'
end
