class AddSubjectIdToUploads < ActiveRecord::Migration[5.0]
  def change
    add_column :uploads, :subject_id, :integer
  end
end
