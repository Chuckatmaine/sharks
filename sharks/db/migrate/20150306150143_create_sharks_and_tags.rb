class CreateSharksAndTags < ActiveRecord::Migration
  def change
    create_table :sharks_tags do |t|
      t.integer :shark_id
      t.integer :tag_id
    end
  end
end
