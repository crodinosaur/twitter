class TweetsController < ApplicationController
	def index
		puts "#{flash[:success]}"
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
			flash[:success] = "Your Tweet #{@tweet.message} has been saved"
			redirect_to tweets_path
		else
			render 'index'
		end
	end



	def tweet_params
		params.require(:tweet).permit(:message)
	end



end
