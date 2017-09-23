class Room < ActiveRecord::Migration[5.0]
  def change
	  create_table :rooms do |t|
		  t.string :name
		  t.integer :question
		  t.integer :capasity
		  t.string :location
		  t.timestamps
	  end
  end
end
