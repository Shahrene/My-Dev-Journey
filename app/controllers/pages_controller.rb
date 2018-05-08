class PagesController < ApplicationController
  def home
  end

  def about
  end

  def profile
  end

  def create
    #Run the below commands after login/sign up methods are merged

    # user = User.find(params[:id])
    # user.new
    # user.summary = params[:summary]
    # user.goals = params[:goals]
    # user.employment_status = params[:status]
    # user.save
    redirect_to("/profile")
  end
end
