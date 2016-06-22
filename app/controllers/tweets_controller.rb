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
		@tweet.save
		render 'index'
	end

		

	def tweet_params
		params.require(:tweet).permit(:message)
	end



end
