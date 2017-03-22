class AddUseridToVote < ActiveRecord::Migration[5.0]
  def change
    remove_column :votes, :user_id
    add_column :votes, :user_id, :integer
    add_index :votes, [:user_id, :element_id], :unique => true
  end
end
