class AdminController < ApplicationController
  before_action :authorize

  def dashboard

  end

  def authorize
    redirect_to root_path unless admin?
  end

  def admin?
    true unless User.find(session[:user_id]).nil?
  end
end
