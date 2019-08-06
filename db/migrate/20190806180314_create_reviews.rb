class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :content
      t.references :user, foreign_key: true
      t.integer :accuracy
      t.integer :value
      t.integer :design
      t.references :dream, foreign_key: true

      t.timestamps
    end
  end
end
