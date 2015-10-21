class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.column :title, :string
      t.column :user_id, :integer
      t.column :description, :string
      t.timestamps null: false
    end
  end
end
