class UsersController < ActionController::Base
	respond_to :json
	#Create
	#Read
	def index
		users = User.all;
		@response = [];
		users.each do |user|
			@response << user;
		end
		# @response = {user1: user1.username};
		respond_with @response
		# binding.pry
		# respond_to do |format|
		# 	format.html {render :index}
		# 	format.json {render json: {
		# 		hello: "world"
		# 	}}
		# end
	end

	#Update

	#Destroy

end
