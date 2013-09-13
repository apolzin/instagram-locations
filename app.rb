require 'rubygems'
require "sinatra"
require "instagram"
require "cgi"



enable :sessions

Instagram.configure do |config|
  config.client_id = "5defdcb563574790be45aa4c093a9906"
  config.client_secret = "8f4cde0dd6504d389a4ac9c10e90fb8a"
end

get '/' do
  prm = CGI::parse(request.query_string)
  media = Instagram.media_search(prm["lat"][0],prm["lng"][0])
  html = ''
  for item in media
    html << "<img src='#{item.images.thumbnail.url}' />"
  end
  html
end




