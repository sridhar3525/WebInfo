class Event < ApplicationRecord
  validates_presence_of :EventName, :EventDate, :EventLocation
  validates_presence_of :EventAddress


end
