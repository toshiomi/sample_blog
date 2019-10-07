class TweetsController < ApplicationController
  def show
    render template: 'tweets/show'
  end

  def detail
    render template: 'tweets/detail'
  end

  def new
    render template: 'tweets/new'
  end

  def add
    title = params[:tweets][:title]
    text = params[:tweets][:text]
    tweet = Tweet.new()
    tweet.title = title
    tweet.text = text
    tweet.user_id = session[:user_id]
    tweet.save
    redirect_to '/tweets/show'
  end

end