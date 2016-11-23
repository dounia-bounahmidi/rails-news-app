class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

before_action :set_subscriber 

def require_admin 
    redirect_to '/' unless current_editor.admin?
end 


private 
def set_subscriber
	@subscriber = Subscriber.new 
end 

end 
