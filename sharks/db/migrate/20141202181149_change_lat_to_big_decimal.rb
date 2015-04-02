class ChangeLatToBigDecimal < ActiveRecord::Migration
  def change
    change_column :tags, :lat, :decimal, precision: 15, scale: 2
    change_column :tags, :lon, :decimal, precision: 15, scale: 2
  end
end
