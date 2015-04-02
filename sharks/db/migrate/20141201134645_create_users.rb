class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :street
      t.string :city
      t.string :zip
      t.string :state

      t.timestamps
    end
  end
end
