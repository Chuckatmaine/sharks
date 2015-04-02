class CreateSharks < ActiveRecord::Migration
  def change
    create_table :sharks do |t|
      t.string :species
      t.string :sex

      t.timestamps
    end
  end
end
