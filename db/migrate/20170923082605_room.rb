class Room < ActiveRecord::Migration[5.0]
  def change
	  create_table :rooms do |t|
		  t.string :name
		  t.string :capasity
		  t.belongs_to :location
		  t.timestamps
	  end
  end
end
