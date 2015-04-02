class ChangeFloatsToBiddecimal < ActiveRecord::Migration
  def change
    change_column :tags, :lat, :decimal, precision: 15, scale: 3
    change_column :tags, :lng, :decimal, precision: 15, scale: 3
    change_column :tags, :latdeg, :decimal, precision: 15, scale: 3
    change_column :tags, :latmin, :decimal, precision: 15, scale: 3
    change_column :tags, :latsec, :decimal, precision: 15, scale: 3
    change_column :tags, :londeg, :decimal, precision: 15, scale: 3
    change_column :tags, :lonmin, :decimal, precision: 15, scale: 3
    change_column :tags, :lonsec, :decimal, precision: 15, scale: 3
  end
end
