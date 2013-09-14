class FixColumnName < ActiveRecord::Migration
  def self.up
    rename_column :Story, :Story id, :story_id
  end

  def self.down
    rename_column :Story, :story_id, :Story id
  end
end
