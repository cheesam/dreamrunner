class CreateSleeps < ActiveRecord::Migration[5.2]
  def change
    create_table :sleeps do |t|
      t.date :date
      t.references :user, foreign_key: true
      t.references :dream, foreign_key: true

      t.timestamps
    end
  end
end
