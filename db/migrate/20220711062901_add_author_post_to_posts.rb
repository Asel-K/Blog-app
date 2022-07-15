class AddAuthorPostToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :author_post, :string
  end
end
