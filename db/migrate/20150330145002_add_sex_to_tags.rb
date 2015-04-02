class AddSexToTags < ActiveRecord::Migration
  def change
    add_column :tags, :sex, :string
  end
end
