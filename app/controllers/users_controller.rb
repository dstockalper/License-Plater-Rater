class UsersController < ApplicationController
	def index
	end

	def new

		if current_user
			redirect_to user_path(:id)
		else
			return
		end
		@user = User.new
	end

	def create
		# params hash comes in from form_tag containing attributes for new user and new plate
		user_params = { 
						email: params[:email], 
						password: params[:password], 
						password_confirmation: params[:password_confirmation]
					  }
		plate_params = {
						plate_state: params[:plate_state], 
						plate_number: params[:plate_number]
					   }
		@user = User.new(user_params)
		@plate = Plate.find_by(plate_state: params[:plate_state], plate_number: params[:plate_number])
		if @plate
			@user.plate = @plate
			# equivalent to @user.plate_id = @plate.id
			# rails makes the connection because we have set up belongs_to-has_one relationship
		else
			@new_plate = Plate.new(plate_params)
			@user.plate = @new_plate
		end
		if @user.save
			session[:current_user_id] = @user.id
			redirect_to user_path(:id)
		else
			render new_user_path
		end
		
		
	end


	def show
		if !current_user
			redirect_to new_user_path
		end
	end


	private

	def user_params
		params.require(:user).permit(
			:email,
			:password,
			:password_confirmation,
			:plate_state,
			:plate_number
		)
	end	
end
