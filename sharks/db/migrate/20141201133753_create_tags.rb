class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer :number
      t.float :lat
      t.float :lng
      t.integer :shark_id
      t.integer :angler_id
      t.text :comments
      t.boolean :five_miles
      t.datetime :date
      t.integer :tagger_id
      t.string :method
      t.string :condition
      t.integer :length
      t.integer :weight
      t.string :species

      t.timestamps
    end
  end
end
