require 'json'
require "oauth2"

  def get_pos(id)
    client = OAuth2::Client.new(FT_UID, FT_SECRET, site:"https://api.intra.42.fr")
    token = client.client_credentials.get_token

    #location = token.get("/v2/users" + id).parsed
    #location["location"]
    info = token.get("/v2/users/" + id + "/locations/").parsed
    # puts info
    puts "===="
    location = info[0]["end_at"]
    puts location
    if location.nil?
      location = info[0]['host']
    else
      location = "Unavailable"
    end
    puts '============'
puts location
    return location
  end
get_pos('rliu')
