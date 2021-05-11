class TwitterController < ApplicationController
  def home
  end

  def search
    client = TwitterServices::RestClient.new
    @result = client.search(params[:search_text], params[:rec_number])
  end
end
