class AddFieldsToTags < ActiveRecord::Migration
  def change
    add_column :tags, :nw, :string
    add_column :tags, :latdeg, :integer
    add_column :tags, :latmin, :integer
    add_column :tags, :latsec, :integer
    add_column :tags, :ew, :string
    add_column :tags, :londeg, :integer
    add_column :tags, :lonmin, :integer
    add_column :tags, :lonsec, :integer
  end
end
