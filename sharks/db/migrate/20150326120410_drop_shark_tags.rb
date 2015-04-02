class DropSharkTags < ActiveRecord::Migration
  def change
     drop_table :sharks_tags
  end
end
