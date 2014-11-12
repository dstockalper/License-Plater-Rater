class PlatesController < ApplicationController
	
	def new
		@plate = Plate.new
	end

	def create
		@plate = Plate.find_or_create_by(:plate_state => :plate_state ,:plate_number => :plate_number)
		render ""
	end


	private

	def plate_params
		params.require(:plate).permit(
			:plate_state,
			:plate_number,
		)
	end	

end
