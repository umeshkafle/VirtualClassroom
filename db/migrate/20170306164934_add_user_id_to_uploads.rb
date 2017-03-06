class AddUserIdToUploads < ActiveRecord::Migration[5.0]
  def change
    add_column :uploads, :user_id, :integer
  end
end
