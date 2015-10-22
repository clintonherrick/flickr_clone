class AddImageAttachmentIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :image_attachment_id, :integer
  end
end
