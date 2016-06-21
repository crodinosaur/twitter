class TweetsController < ApplicationController
	def index
		@tweet = Tweet.new
	end
	def create
		puts "This is a tweet"
	end
end
