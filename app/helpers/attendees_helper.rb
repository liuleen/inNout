require 'open-uri'
require 'nokogiri'
require 'json'
require 'thread'
module AttendeesHelper

  def get_pos(id)
    # Thread.new {
      client = OAuth2::Client.new( ENV["FT_UID"],  ENV["FT_SECRET"], site:"https://api.intra.42.fr")
      token = client.client_credentials.get_token
      info = token.get("/v2/users/" + id + "/locations/").parsed
      location = info[0]["end_at"]
      if location.nil?
        location = info[0]['host']
      else
        location = "Unavailable"
      end
    return location
    # }
  end

  # def location(login)
  #   url = "https://profile.intra.42.fr/users/" + login
  #   document = open(url)
  #   content = document.read
  #   parsed_content = Nokogiri::HTML(content)
  #   print parsed_content.css('.content')

end
