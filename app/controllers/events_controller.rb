class EventsController < ApplicationController
  def create
    redirect_to "/"
  end

  def new
    @event = event.new
    @event.date = params[:date]
    @event.event_name = params[:event_name]
    @event.description = params[:description]
    @event.icon_url = params[:icon_url]
    @event.save
  end
end