class TweetsController < ApplicationController

  def top
  end
  
  def new
    @tweet = Tweet.new
  end
  
  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to tweets_path, notice: "ツイートを作成しました！"
    else
      render :new
    end

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
