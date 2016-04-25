class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   :login
      t.boolean  :admin
      t.string   :first_name
      t.string   :last_name
      t.text		 :images
      t.timestamps null: false
    end
  end
end
