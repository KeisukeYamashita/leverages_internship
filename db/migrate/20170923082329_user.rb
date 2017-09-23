class User < ActiveRecord::Migration[5.0]
  def change
	  create_table :users do |t|
		  t.string :display_name
		  t.integer :position
		  t.belongs_to :room
		  t.timestamps
	  end
  end
end
