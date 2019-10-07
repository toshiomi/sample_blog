class UsersController < ApplicationController
  def new
    render template: 'users/new'
  end

  def login
    render template: 'users/login'
  end

  def add
    name = params[:users][:name]
    password = params[:users][:password]
    user = User.new()
    user.name = name
    user.password = password
    user.save
    redirect_to '/tweets/show'
  end

  def login2
    name = params[:users][:name]
    password = params[:users][:password]
    user = User.find_by(name: name, password: password)
    if user then
      session[:user_id] = user.id
      redirect_to '/tweets/show'
    else
      render template: 'users/login'
    end
  end
end
