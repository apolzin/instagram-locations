class InstagramEntry < ActiveRecord::Base
  attr_accessible :latlng, :low_resolution_url, :low_resolution_width, :low_resolution_height, :standard_resolution_url, :standard_resolution_width, :standard_resolution_height, :user_full_name, :user_profile_picture, :user_username, :user_website
end
