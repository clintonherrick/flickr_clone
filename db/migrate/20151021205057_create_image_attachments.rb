class CreateImageAttachments < ActiveRecord::Migration
  def change
    create_table :image_attachments do |t|

      t.timestamps null: false
    end
  end
end
