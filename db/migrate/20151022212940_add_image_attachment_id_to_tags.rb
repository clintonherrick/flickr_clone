class AddImageAttachmentIdToTags < ActiveRecord::Migration
  def change
    add_column :tags, :image_attachment_id, :integer
  end
end
