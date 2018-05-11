class ApplicationController < ActionController::Base
  include ApplicationHelper

  before_action :check_login

  def check_login
    unless logged_in?
      redirect_to "/login"
    end
  end
end
