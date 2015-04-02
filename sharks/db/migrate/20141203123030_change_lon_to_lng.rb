class ChangeLonToLng < ActiveRecord::Migration
  def change
    rename_column :tags, :lon, :lng
  end
end
