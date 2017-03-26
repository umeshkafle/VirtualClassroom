class RemoveLecturerIdFromSubjects < ActiveRecord::Migration[5.0]
  def change
    remove_column :subjects, :lecturer_id, :integer
  end
end
