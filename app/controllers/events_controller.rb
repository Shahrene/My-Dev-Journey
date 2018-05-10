class EventsController < ApplicationController
  protect_from_forgery except: ["api_destroy"]

  def new
  end

  def create
    @event = Event.new
    @event.user_id = session[:user_id]
    @event.date = params[:date]
    @event.event_name = params[:event_name]
    @event.description = params[:description]
    @event.icon_url = params[:icon_url]

    if @event.save
      redirect_to ("/events")
    else
      redirect_to "/"
    end

    # @event.save
    # redirect_to "/events"
  end

  def index
    events = Event.where(user_id: session[:user_id])
    @sorted = events.sort_by { |event| event.date }
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.user_id = session[:user_id]
    @event.date = params[:date]
    @event.event_name = params[:event_name]
    @event.description = params[:description]
    @event.icon_url = params[:icon_url]
    @event.save
    redirect_to "/events"
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to "/events"
  end

  def api_destroy
    @event = Event.find(params[:id])
    @event.destroy
    render json: {info: "well done"}
  end
end
