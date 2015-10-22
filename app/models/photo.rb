class Photo < ActiveRecord::Base
  belongs_to :image_attachment
  has_many :comments
end
