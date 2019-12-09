class TweetsController < ApplicationController

  def top
  end
  
  def new
    @tweet = Tweet.new
  end
  
  def create
    Tweet.create(tweet_params)
    redirect_to new_tweet_path
  end

  def index
    @tweets = Tweet.all
  end

  def show
  end


  def edit
  end


  def update
  end

  def destroy
  end

  private

  def tweet_params
    params.require(:tweet).permit(:content)
  end

end
