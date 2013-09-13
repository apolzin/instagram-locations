class CreateInstagramEntries < ActiveRecord::Migration
  def change
    create_table :instagram_entries do |t|
      t.string :created_time
      t.string :latlng
      t.string :instagram_id
      t.string :low_resolution_url
      t.integer :low_resolution_width
      t.integer :low_resolution_height
      t.string :standard_resolution_url
      t.integer :standard_resolution_width
      t.integer :standard_resolution_height
      t.string :user_full_name
      t.string :user_id
      t.string :user_profile_picture
      t.string :user_username
      t.string :user_website
      t.timestamps
    end
  end
end
