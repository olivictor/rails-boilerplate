class CreatePageGroups < ActiveRecord::Migration
  def change
    create_table :page_groups do |t|
      t.string :title

      t.timestamps
    end
  end
end
