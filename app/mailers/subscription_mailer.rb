class SubscriptionMailer < ApplicationMailer

	default from: 'douniabounahmidi@gmail.com'

	def confirmation_email(subscriber)
		@subscriber = subscriber
		mail(to: @subscriber.email, subject: 'Thank you for subscribing!') 
	end 
end
