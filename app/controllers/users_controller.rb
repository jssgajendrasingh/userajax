class UsersController < ApplicationController
	def index 
		@users = User.all
	end

	def create
		@user = User.new(user_params)
		@user.save
		@users = User.all

		# respond_to do |format|
  #     if @user.save
  #  			@users = User.all
  #       format.html { redirect_to root }
  #       format.js
  #     end
  #   end
	end	

	private
	def user_params
		params.require(:user).permit(:name,:email)
	end	
end
