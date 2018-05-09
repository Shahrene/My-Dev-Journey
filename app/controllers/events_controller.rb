class EventsController < ApplicationController
  def new
  end

  def create
    @event = Event.new
    @event.user_id = session[:user_id]
    @event.date = params[:date]
    @event.event_name = params[:event_name]
    @event.description = params[:description]
    @event.icon_url = params[:icon_url]
    @event.save
  end
end
