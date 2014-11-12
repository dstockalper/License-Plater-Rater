class ReviewsController < ApplicationController
	

	def new
		@review = Review.new
	end


	def create
		# params hash comes in from form_tag containing attributes for new user and new plate
		review_params = { 
						user_id: current_user.id,
						agg_speeding: params[:agg_speeding], agg_weaving: params[:agg_weaving],agg_tailgating: params[:agg_tailgating],agg_cutting: params[:agg_cutting],agg_light: params[:agg_light],agg_rage: params[:agg_rage],agg_other: params[:agg_other],
						ina_braking: params[:ina_braking], ina_drifting: params[:ina_drifting],ina_intersection: params[:ina_intersection],ina_pedestrian: params[:ina_pedestrian],ina_phone: params[:ina_phone],ina_drunk: params[:ina_drunk],ina_other: params[:ina_other],
						ale_safe: params[:ale_safe], ale_courteous: params[:ale_courteous],park_blocking: params[:park_blocking],park_illegal: params[:park_illegal]
					  }
		plate_params = {
						plate_state: params[:plate_state], 
						plate_number: params[:plate_number]
					   }
		@user = current_user
		@review = Review.new(review_params)
		@plate = Plate.find_by(plate_state: params[:plate_state], plate_number: params[:plate_number])

		if @plate
			@review.plate = @plate
		else
			@new_plate = Plate.new(plate_params)
			@new_plate.save
			@review.plate = @new_plate
		end

		if @review.save
			redirect_to user_path(current_user.id)
		else
			render new_review_path
		end
		
	end


end
