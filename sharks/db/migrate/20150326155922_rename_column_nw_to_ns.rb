class RenameColumnNwToNs < ActiveRecord::Migration
  def change
   rename_column :tags, :nw, :ns
  end
end
