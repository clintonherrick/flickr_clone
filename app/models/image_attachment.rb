class ImageAttachment < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  belongs_to :post
  has_many :comments
end
