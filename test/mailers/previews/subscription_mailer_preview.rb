# Preview all emails at http://localhost:3000/rails/mailers/subscription_mailer
class SubscriptionMailerPreview < ActionMailer::Preview

  def confirmation_mail_preview
    	SubscriptionMailer.confirmation_email(Subscriber.first)
  end

end
