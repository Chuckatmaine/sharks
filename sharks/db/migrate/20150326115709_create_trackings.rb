class CreateTrackings < ActiveRecord::Migration
  def change
    create_table :trackings do |t|
      t.integer :shark_id
      t.integer :tag_id
      t.datetime :created_at

      t.timestamps
    end
  end
end
