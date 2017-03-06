class CreateUploads < ActiveRecord::Migration[5.0]
  def change
    create_table :uploads do |t|
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
