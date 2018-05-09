class UsersController < ActionController::Base
	before_action :set_user, only: [:show, :create]
	#Create
	#Read
	def index
		@users = User.all;
		render json: @users, status: 200
	end

	def show
		render json: @user, status: 200		
	end
	#Update

	#Destroy

	private
	  # Use callbacks to share common setup or constraints between actions.
	  def set_user
	    @user = User.find(params[:id])
	  end

	  # Never trust parameters from the scary internet, only allow the white list through.
	  def user_params
	    params.require(:user).permit(:username)
	  end
end
