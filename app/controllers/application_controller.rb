class ApplicationController < ActionController::Base
    protect_from_forgery eith: :exception
    
    include SessionsHelper
    
    private
    
    def require_user_logged_in
        unless logged_in?
          redirect_to loggin_url
        end
    end
end
