class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :content
      t.datetime :publish_at
      t.string :author

      t.timestamps
    end
  end
end
