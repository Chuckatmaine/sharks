class ChangeLatLngToFloat < ActiveRecord::Migration
  def change
   change_column :tags, :lat, :float
   change_column :tags, :lng, :float
  end
end
