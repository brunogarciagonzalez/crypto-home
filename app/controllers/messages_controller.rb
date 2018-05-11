class MessagesController < ApplicationController
	before_action :set_message, only: [:show]
	#Create
	def create
		@user = User.find_by(username: message_params[:username])
		@message = Message.create(content: message_params[:content], user_id: @user.id)
		render json: @message, status: 200
		ActionCable.server.broadcast 'messages',
			content: @message.content,
			user: {username: @user.username},
			created_at: @message.created_at
		head :ok
	end

	#Read
	def index
		@messages = Message.all;
		render json: @messages, status: 200
	end

	def show
		render json: @message, status: 200
	end

	#Update

	#Destroy

	private
	  # Use callbacks to share common setup or constraints between actions.
	  def set_message
	    @message = Message.find(params[:id])
	  end

	  # Never trust parameters from the scary internet, only allow the white list through.
	  def message_params
	    params.require(:message).permit(:content, :username)
	  end
end
