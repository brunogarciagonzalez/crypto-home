class MessagesController < ApplicationController
	before_action :set_message, only: [:show, :create]
	#Create
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
	    params.require(:message).permit(:user_id, :content, :created_at)
	  end
end
