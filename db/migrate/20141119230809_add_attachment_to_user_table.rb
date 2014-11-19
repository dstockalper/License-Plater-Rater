class AddAttachmentToUserTable < ActiveRecord::Migration
  def change
  	add_attachment :users, :vehicle_image
  end
end
