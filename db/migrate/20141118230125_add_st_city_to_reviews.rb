class AddStCityToReviews < ActiveRecord::Migration
  def change
  	add_column :reviews, :street, :string
  	add_column :reviews, :city, :string
  end
end
