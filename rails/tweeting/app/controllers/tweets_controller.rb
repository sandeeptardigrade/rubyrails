class TweetsController < ApplicationController
  
def index
  @tweets = Tweet.all
end
def new
  @tweet = Tweet.new
end
def create
  @tweet = Tweet.new(params.require(:tweet).permit(:twitter, :tweet))
  if @tweet.save
      flash[:success] = "created a tweet"
      redirect_to tweets_path
  else
      flash[:warning] = "couldn't create this tweet"
      redirect_to new_tweet_path
  end
end
def destroy
  @tweet = Tweet.find params[:id]
  @tweet.destroy
  redirect_to tweets_path
end
def edit
  @tweet = Tweet.find params[:id]
end
def update
  @tweet = Tweet.find params[:id]
  if @tweet.update(params.require(:tweet).permit(:twitter, :tweet))
      redirect_to tweet_path(@tweet)
  else
      render :edit
  end
end
def show
  @tweet = Tweet.find params[:id]
end

end




















