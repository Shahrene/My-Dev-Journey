class Event < ApplicationRecord
  belongs_to :user
  validates :date, :event_name, :description, :icon_url, :presence => true
end
