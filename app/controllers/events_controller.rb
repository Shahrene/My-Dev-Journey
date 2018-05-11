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
      redirect_to("/")
    else
      render :new
    end

    # @event.save
    # redirect_to "/events"
  end

  def index
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
    redirect_to "/"
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to "/"
  end

  def api_destroy
    @event = Event.find(params[:id])
    @event.destroy
    render json: {info: "well done"}
  end
  def index
    @users = User.all
  end
end
