class Event < ApplicationRecord
  belongs_to :user
  validates :date, :event_name, :description, :icon_url, length: {minimum: 2}, allow_blank: false
end
