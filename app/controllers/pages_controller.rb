class PagesController < ApplicationController
  def home
  end

  def about
  end

  def profile
  end

  def create
    # if user = current_user
    # user = User.find(params[:id])
    # user.summary = params[:summary]
    # user.goals = params[:goals]
    # user.employment_status = params[:status]
    # user.save
    # end
    redirect_to("/profile")
  end
end
