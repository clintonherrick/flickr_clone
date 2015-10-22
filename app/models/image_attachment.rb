class ImageAttachment < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  belongs_to :post
  has_many :comments
  has_many :tags
end
