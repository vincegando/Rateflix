class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :username
      t.string :email
      t.string :date
      t.integer :rating
      t.string :comment

      t.timestamps
    end
  end
end
