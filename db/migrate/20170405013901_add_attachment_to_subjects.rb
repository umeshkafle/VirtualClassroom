class AddAttachmentToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :attachment, :string
  end
end
