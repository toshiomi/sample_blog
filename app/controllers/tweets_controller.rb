class TweetsController < ApplicationController
  def show
    @tweets = Tweet.all
    @user_name= {}
    @tweets.each do |tweet|
      user = User.find(tweet.user_id)
      @user_name[tweet.user_id] = user.name
    end
    render template: 'tweets/show'
  end

  def detail
    tweet_id = params[:id]
    tweet = Tweet.find(tweet_id)
    @username = User.find(@tweet.user_id).user_name
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