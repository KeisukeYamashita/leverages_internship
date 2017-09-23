class Room < ActiveRecord::Migration[5.0]
  def change
	  create_table :rooms do |t|
		  t.string :name
		  t.string :capasity
		  t.timestamps
	  end
  end
end
