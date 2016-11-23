class SubscribersController < ApplicationController

  def new 
  	@subscriber = Subscriber.new 
  end 

  def create 
	@subscriber = Subscriber.new(subscriber_params)
		if @subscriber.save 
			SubscriptionMailer.confirmation_email(@subscriber).deliver
			redirect_to '/'
		else 
			render 'new'
		end 
	end

	private 
	def subscriber_params 
		params.require(:subscriber).permit(:email) 
	end

end
