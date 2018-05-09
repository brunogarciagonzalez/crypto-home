class SessionsController < ApplicationController
	def signin
		 binding.pry
		 @user = User.find_by(username: params[:username]);
	end

	def signout
		
	end
end
