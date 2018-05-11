class PagesController < ApplicationController
  def home
    if logged_in?
      events = Event.where(user_id: session[:user_id])
      @sorted = events.sort_by { |event| event.date }
    else
      redirect_to "/login"
    end
  end

  def about
  end

  def create
    user = User.find_by(id: params[:user_id])
    user.summary = params[:summary]
    user.goals = params[:goals]
    user.employment_status = params[:status]
    if user.save
      redirect_to "/profile/#{user.id}"
    else
      redirect_to "/signup"
    end
  end

  def profile
  end

  def show
    user = User.find_by(id: params[:user_id])
  end

  def edit
    user = User.find_by(id: params[:user_id])
  end

  def update
    user = User.find_by(id: params[:user_id])
    user.summary = params[:summary]
    user.goals = params[:goals]
    user.employment_status = params[:status]
    user.save
    redirect_to("/profile")
  end
 
end
