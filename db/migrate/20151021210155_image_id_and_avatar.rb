class ImageIdAndAvatar < ActiveRecord::Migration
  def change

    add_column :image_attachments, :user_id, :integer
    add_column :image_attachments, :photo, :string

  end
end
