class TweetsController < ApplicationController
	def index
		@tweet = Tweet.new
	end
	
	def create
		puts "This is a tweet"
		puts "the params are #{params}"
		# tweet_params = params.require(:tweet).permit(:message)
		@tweet = Tweet.new(tweet_params)
		# @tweet = Tweet.new(params[:tweet]) #Tweet.new(message: "whatever the user typed")
		if @tweet.save
			#do something
			redirect_to tweets_path
		else
			render 'index'
		end
	end



	def tweet_params
		params.require(:tweet).permit(:message)
	end



end
