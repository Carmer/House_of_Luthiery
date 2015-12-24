class SessionController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(passphrase: params[:user][:passphrase])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      flash[:success] = "Hey #{@user.name}. Sup?"
      redirect_to admin_dashboard_path
    else
      flash[:error] = "Fuck you. Or not. Try agin?"
      render :new
    end
  end
end
