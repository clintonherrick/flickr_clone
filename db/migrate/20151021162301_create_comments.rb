class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.column :user_comment, :string
      t.column :user_id, :integer
      t.timestamps null: false
    end
  end
end
