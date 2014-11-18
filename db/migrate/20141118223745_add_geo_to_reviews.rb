class AddGeoToReviews < ActiveRecord::Migration
  def change
  	add_column :reviews, :address, :string
  	add_column :reviews, :latitude, :decimal
  	add_column :reviews, :longitude, :decimal
  end
end
