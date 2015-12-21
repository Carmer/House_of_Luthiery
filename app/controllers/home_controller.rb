class HomeController < ApplicationController

  def home
    render :home
  end

  def about
    render :about
  end

  def contact
    render :contact
  end

  def contact_email
    ContactEmailer.send_signup_email(params).deliver_now
    flash.now[:success] = "Your email was sent"
    render :home
  end
end
