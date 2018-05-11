class SessionController < ApplicationController
  skip_before_action :check_login, only: [:new, :create, :signup, :signupdetails]

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to "/"
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/login"
  end

  def signup # take to the view with the same file name
  end

  def signupdetails
    @user = User.new
    @user.username = params[:username]
    @user.surname = params[:surname]
    @user.github_username = params[:github]
    @user.email = params[:email]
    @user.password = params[:password]
    if @user.save
      session[:user_id] = @user.id
      redirect_to ("/")
    else
      render :signup
    end
  end

  def details
  end
end
