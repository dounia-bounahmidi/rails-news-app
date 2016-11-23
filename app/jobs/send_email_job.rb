class SendEmailJob < ApplicationJob
  queue_as :default

  def perform(subscriber)
    @subscriber = subscriber 
    SubscriptionMailer.confirmation_email(@subscriber)
  end
  
end
