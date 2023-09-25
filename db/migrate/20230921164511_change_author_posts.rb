class ChangeAuthorPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :author
    add_reference :posts, :author
  end
end
