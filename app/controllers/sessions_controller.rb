class SessionsController < ApplicationController
    def new
    end

    def create
        account = Account.find_by(email: params[:email])
        if account.present? && account.authenticate(params[:password])
            session[:account_id] = account.id
            redirect_to root_path, notice: "Logged in"
        else
            flash[:alert] = "Invalid email or password"
            render :new
        end
    end

    def destroy
        session[:account_id] = nil
        redirect_to signin_path, notice: "logged out"
    end
end