class ContactEmailer < ActionMailer::Base
  default :from => 'info@houseofluthiery.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(contact_info)
    @contact_info = contact_info
    mail( :to => "info@houseofluthiery.com",
    :from => contact_info[:email_address],
    :subject => "Website Contact: #{contact_info[:reason_to_contact]}")
  end
end
