class AddTaggerToUser < ActiveRecord::Migration
  def change
    add_column :users, :tagger, :boolean
  end
end
