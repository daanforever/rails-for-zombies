class TweetsController < ApplicationController

  before_filter :get_tweet, :only => [:edit, :update, :destroy]

  def get_tweet
    @tweet = Tweet.find(params[:id])
  end

  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
    @tweet.zombie = Zombie.first
  end

  def create
    if @tweet = Tweet.create(params[:tweet])
      render :show
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
end

