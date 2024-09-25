module ApplicationHelper
    def logged_in?
        !!session[:account_id]
    end
    
    def current_account
        @current_account ||= Account.find_by_id(session[:account_id]) if !!session[:user_id]
    end
    
end
