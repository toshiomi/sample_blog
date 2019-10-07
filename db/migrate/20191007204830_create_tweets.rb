class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.integer :user_id
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
