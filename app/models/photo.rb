class Photo < ActiveRecord::Base
  # validates :url, presence: true

  attachment :image
end
