class AddSlugToPageGroup < ActiveRecord::Migration
  def change
    add_column :page_groups, :slug, :string
    add_index :page_groups, :slug, unique: true
  end
end
