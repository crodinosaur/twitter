class Tweet < ActiveRecord::Base

	validates(:message, length: {maximum: 5})

	def bark
		puts "im not a dog.  i dont bark"
	end

	def nineminus8
		puts "calculating..."
		1
	end

end
