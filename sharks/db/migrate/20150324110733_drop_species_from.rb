class DropSpeciesFrom < ActiveRecord::Migration
  def change
   remove_column :sharks, :species
   remove_column :sharks, :sex
  end
end
