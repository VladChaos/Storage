class AddMotherIdToChildren < ActiveRecord::Migration
  def change
    add_column :children, :mother_id, :integer
  end
end
