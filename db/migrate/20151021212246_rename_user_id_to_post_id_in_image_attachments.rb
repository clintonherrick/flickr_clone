class RenameUserIdToPostIdInImageAttachments < ActiveRecord::Migration
  def change
    rename_column :image_attachments, :user_id, :post_id
  end
end
