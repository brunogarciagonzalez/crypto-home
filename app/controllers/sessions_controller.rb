class SessionsController < ApplicationController
	def signin
		# look for user given params
		@user = User.find_by(username: strong_params);
		# if found:
		if @user
			render json: @user, status: 200
		# else:
		else
			obj = {status: "failed"}
			render json: obj, status: 204
		end
	end

	def signout

	end

	private
	def strong_params
		params.require(:username);
	end
end
