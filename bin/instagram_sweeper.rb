latlng = [[53.550405, 9.962540]]

latlng.each do |pair|
  media = Instagram.media_search(pair[0], pair[1])
  for item in media
    unless InstagramEntry.exists?(:instagram_id => item.id)
      InstagramEntry.create({
        :instagram_id => item.id,
        :created_time => item.created_time,
        :latlng => pair.to_json,
        :low_resolution_url => item.images.low_resolution.url,
        :low_resolution_width => item.images.low_resolution.width.to_i,
        :low_resolution_height => item.images.low_resolution.height.to_i,
        :standard_resolution_url => item.images.standard_resolution.url,
        :standard_resolution_width => item.images.standard_resolution.width.to_i,
        :standard_resolution_height => item.images.standard_resolution.height.to_i,
        :user_full_name => item.user.full_name,
        :user_id => item.user.id.to_s,
        :user_profile_picture => item.user.profile_picture,
        :user_username => item.user.username,
        :user_website => item.user.website
      })
    end
  end
end
