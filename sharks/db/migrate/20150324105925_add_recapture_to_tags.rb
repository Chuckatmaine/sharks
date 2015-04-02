class AddRecaptureToTags < ActiveRecord::Migration
  def change
    add_column :tags, :recapture, :boolean
  end
end
