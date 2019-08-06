class AddPhotoToDreams < ActiveRecord::Migration[5.2]
  def change
    add_column :dreams, :photo, :string
  end
end
