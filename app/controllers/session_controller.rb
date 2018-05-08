class SessionController < ApplicationController
  def new
  end
  def login
    user = User.find_by(email: params[:email])
    redirect_to '/'
    if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to '/'
    else
        render :new
    end
  end

  def destroy
    session = Session.find(params[:id])
    session.destroy
    redirect_to '/'
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
        redirect_to ('/')
    else
        redirect_to '/signup'
    end
  end

  def details
  end
  
  def create
    redirect_to ('/')
  end
end