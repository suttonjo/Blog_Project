class SignController < ApplicationController
  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
    if @account.save
      session[:account_id] = @account.id
      redirect_to root_path, notice: "Successfully created account"
    else
      render :new
    end
  end

  private
  def account_params
    params.require(:account).permit(:email, :username, :password, :password_confirmation)
  end
end
