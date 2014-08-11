class AddPageGroupToPages < ActiveRecord::Migration
  def change
    add_reference :pages, :page_group, index: true
  end
end
