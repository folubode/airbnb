class UsersController < ApplicationController

  	before_action :authenticate_user!, only: [:show]
  	before_action :set_user, only: [:show]

  def show
    redirect_to root_path, notice: "Oops, looks like you took a wrong turn!" unless current_user == @user
  #   @rooms = @user.rooms

  #   # Display all the guest reviews to host (if this user is a host)
  #   @guest_reviews = Review.where(type: "GuestReview", host_id: @user.id)

  #   # Display all the host reviews to host (if this user is a guest)
  #   @host_reviews = Review.where(type: "HostReview", guest_id: @user.id)
   end

   
	private

	def user_params
	   params.required(:user).permit(:fullname, :email, :phone_number, :description)
	end

	def set_user
		@user = User.find(params[:id])
	end

end