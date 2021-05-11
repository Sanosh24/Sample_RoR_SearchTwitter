# Sample_RoR_TwitterSearch Application

1. Whats Twitter Search

	- Twitter search is a Ruby On Rails application that search the tweets with whatever search parameters you desire. This app integrates with Twitter's Standard Search API’s.

2. Technology Stack
	This application uses following Stack:
	- Rails 5.1.0
	- Ruby 2.4.1
	- Bootstrap4
	- Jquery
	- HTML
	- CSS

3. Approach Followed
	- We are using the ‘gem twitter’ for integrating and communicating with Twitter. We have created the library class at lib/twitter_services/rest_client.rb. This class instantiate an object to connect to twitter api’s, and also contains the search api.

	- We have used Bootstrap4 for designing the UI with improved classes.

	- For front end we are using Jquery3.

4. Getting Started
	To run the application, please follow below procedure.
	
	- Obtain Twitter Account Credentails
		The application requires the twitter developer account credentails and application access token. Obtain the twitter developer account credentials at https://developer.twitter.com/ if you dont have one. Also create the application at https://apps.twitter.com and generate the access tokens.
	
	- Setup The Environment Variables
		To allow the application to communicate with Twitter, we will have to set the credentails obtained in above step as environment variables. For Ubuntu OS open the bashrc file and copy-paste the following.
			export TWITTER_CONSUMER_KEY="consumer_key"
			export TWITTER_CONSUMER_SECRET="consumer_secret"
			export TWITTER_ACCESS_TOKEN="access_token"
			export TWITTER_ACCESS_TOKEN_SECRET="token_secret"
	
	- Open terminal, change directory to twitter_search and start the web server:
		$ cd twitter_search
		$ rails server
	
	- Visit http://localhost/server_address/domain:3000.