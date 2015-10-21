class Post < ActiveRecord::Base
  has_many :image_attachments
  accepts_nested_attributes_for :image_attachments
end
