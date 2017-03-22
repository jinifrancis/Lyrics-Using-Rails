class AddColumnToElement < ActiveRecord::Migration
  def change
     
    add_column :elements, :cached_votes_up, :integer, :default => 0
    add_column :elements, :cached_votes_down, :integer, :default => 0
    add_column :elements, :cached_votes_score, :integer, :default => 0
    add_index  :elements, :cached_votes_up
    add_index  :elements, :cached_votes_down
    add_index  :elements, :cached_votes_score
  end
end
