module TwitterServices
	class RestClient
		def initialize
			@client = initialize_rest_client
		end

		def search(query, no_of_records)
			result = []
			no_of_records = no_of_records.to_i || 3
			@client.search("#{query}", result_type: "recent").take(no_of_records).each do |tweet|
	      result << { user_name: tweet.user.screen_name, tweet_text: tweet.text }
	    end
	    result
		end

		private

		def initialize_rest_client
			Twitter::REST::Client.new do |config|
	      config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
	      config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
	      config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
	      config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
	    end
		end
	end
end