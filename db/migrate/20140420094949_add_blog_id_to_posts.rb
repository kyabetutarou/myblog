class AddBlogIdToPosts < ActiveRecord::Migration
  def self.up
    add_column(:posts, :blog_id, :integer)
    add_index(:posts, :blog_id)
  end

  def self.down
    remove_index(:posts, :column => :blog_id)
    remove_column(:posts, :blog_id)
  end
end