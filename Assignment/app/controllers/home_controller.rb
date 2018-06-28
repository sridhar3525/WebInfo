class HomeController < ApplicationController
  def index
    #render index
    @user = User.all
  end
  def signup
      @user = User.new

  end

  def register
      formValues = params
      formValues = user_params
      fusername = formValues[:username]
      femailAddr = formValues[:emailAddress]
      #record = User.create(:username => fusername,:emailAddress => femailAddr,
      #                    :password => formValues[:password])
      user_params
      object = User.new(:username => fusername,:emailAddress => femailAddr,
                           :password => formValues[:password])
      if object.save
        redirect_to '/home'
       else
        render 'signup'
      end
  end

  def about
    @events = Event.all
    @event = Event.new
    @user_detail = UserDetail.find(session[:id])
  end

  def myevents
    @events = Event.all
    @event = Event.new
  end

  def allevents
    @events = Event.all
    @event = Event.new
  end

  def contact

  end

  def homeindex
      session.delete(:name)
  end

  def login
      formValues = params
      usernameTemp = params[:username]
      pwdTemp = params[:password]
      userobj = UserDetail.new()
      userobj.username = params[:username]
      userobj.password = params[:password]
      result = UserDetail.where(:username =>  userobj.username).first()
      if result != nil && result.password == userobj.password
        session[:id] = result.id
        session[:name] = result.firstname
        redirect_to  '/home/index'
      else
        render 'homeindex'
      end
  end
  private
    def user_params
      params.permit(:username,:emailAddress,:password)
    end


end
