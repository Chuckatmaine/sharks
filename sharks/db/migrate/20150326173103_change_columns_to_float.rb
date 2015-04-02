class ChangeColumnsToFloat < ActiveRecord::Migration
  def change
   change_column :tags, :latdeg, :float
   change_column :tags, :latmin, :float
   change_column :tags, :latsec, :float
   change_column :tags, :londeg, :float
   change_column :tags, :lonmin, :float
   change_column :tags, :lonsec, :float
  end
end
