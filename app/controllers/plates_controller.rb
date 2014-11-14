class PlatesController < ApplicationController
	
	def index

		
		respond_to do |format|

		end
	end

	def show
	end

	def new
		@plate = Plate.new
	end

	def create
		@plate = Plate.find_or_create_by(:plate_state => :plate_state ,:plate_number => :plate_number)
	end


	private

	def plate_params
		params.require(:plate).permit(
			:plate_state,
			:plate_number,
		)
	end	

end
