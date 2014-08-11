class AddPostCategoryToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :post_category, index: true
  end
end
