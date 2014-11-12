class CreatePlates < ActiveRecord::Migration
  def change
    create_table :plates do |t|

      t.string	:plate_state
      t.string	:plate_number
      t.timestamps
    end
  end
end
